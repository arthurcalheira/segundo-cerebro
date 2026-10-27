#!/usr/bin/env bash
# Primeiro passo da rotina "Conferente do site" da Infra no OpenBot da VPS (openbot/plano-workspace.md).
# Versão Linux de conferente-site.ps1 (27/10/2026). Chamada:
#   bash /var/lib/openbot/projetos/segundo-cerebro/openbot/scripts/conferente-site.sh
# Lê o resultado do conferente (`sudo -n /usr/local/sbin/vitrinista-cli producao site:conferir`,
# decisão 2026-10-22-conferente-do-site). Sai com 0 e imprime as divergências quando aparece alguma nova
# (ou loja sem leitura); sai com 1 quando nada mudou ou o servidor não respondeu.
set -uo pipefail

vault=$(cd "$(dirname "$0")/../.." && pwd)
estado="$vault/.openbot/conferente-chaves.txt"

saida=$(sudo -n /usr/local/sbin/vitrinista-cli producao site:conferir 2>/dev/null) || exit 1

# Do primeiro "{" em diante é o JSON; dele saem as chaves "loja|chave" e "loja|sem_leitura".
json=$(printf '%s' "$saida" | sed -n '/{/,$p' | sed '1s/^[^{]*//')
[ -n "$json" ] || exit 1
agora=$(printf '%s' "$json" | python3 -I -c '
import json, sys
d = json.load(sys.stdin)
for a in d.get("abertas") or []:
    if a: print("%s|%s" % (a.get("loja"), a.get("chave")))
for s in d.get("semLeitura") or []:
    if s: print("%s|sem_leitura" % s.get("loja"))
') || exit 1

antes=""
[ -f "$estado" ] && antes=$(cat "$estado")
mkdir -p "$(dirname "$estado")"
printf '%s\n' "$agora" | sed '/^$/d' > "$estado"

novas=()
while IFS= read -r l; do
  [ -z "$l" ] && continue
  grep -qxF -- "$l" <<< "$antes" || novas+=("$l")
done <<< "$agora"
[ ${#novas[@]} -eq 0 ] && exit 1

( IFS=','; s="${novas[*]}"; echo "Novas: ${s//,/, }" )
printf '%s\n' "$json"
exit 0
