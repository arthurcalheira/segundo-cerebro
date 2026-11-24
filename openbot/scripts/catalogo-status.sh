#!/usr/bin/env bash
# Rotina "Catálogo por arquivo" da Infra no OpenBot da VPS (23/11/2026). Chamada:
#   bash /var/lib/openbot/projetos/segundo-cerebro/openbot/scripts/catalogo-status.sh
# Lê `vitrinista-cli producao catalogo:status` (o catálogo da Renner e da Riachuelo lido dos arquivos do leitor da dona).
# Sai com 0 e imprime os alertas quando há algo a avisar; sai com 1 quando está tudo bem ou o servidor não respondeu.
# Alertas: loja velha (mais de 3 h sem coleta nova; avisa ao ficar velha e depois uma vez por dia), saídas seguradas,
# erro, loja que sumiu do status. Só os alertas novos ou mudados desde a última volta (estado em .openbot/).
set -uo pipefail

vault=$(cd "$(dirname "$0")/../.." && pwd)
estado="$vault/.openbot/catalogo-alertas.txt"
mkdir -p "$vault/.openbot"

saida=$(sudo -n /usr/local/sbin/vitrinista-cli producao catalogo:status 2>/dev/null) || exit 1
json=$(printf '%s' "$saida" | sed -n '/^\[/,$p')
[ -n "$json" ] || exit 1

anterior=""
[ -f "$estado" ] && anterior=$(cat "$estado")

resultado=$(printf '%s' "$json" | ANTERIOR="$anterior" python3 -I -c '
import json, os, sys, datetime
lojas = json.load(sys.stdin)
hoje = datetime.date.today().isoformat()
antes = {}
for linha in os.environ.get("ANTERIOR", "").splitlines():
    if "\t" in linha:
        chave, valor = linha.split("\t", 1)
        antes[chave] = valor
agora, avisos = {}, []
vistas = set()
for l in lojas:
    loja = l.get("loja")
    vistas.add(loja)
    agora["loja:" + loja] = "ok"
    if l.get("velho"):
        agora["velho:" + loja] = hoje
        if antes.get("velho:" + loja) != hoje:
            idade, quando = l.get("idade_h"), l.get("scraped_at")
            avisos.append(f"{loja}: arquivo velho, {idade} h sem coleta nova (scraped_at {quando})")
    seg = l.get("saidas_seguradas") or 0
    if seg > 0:
        motivo = l.get("saidas_seguradas_motivo")
        valor = f"{seg}|{motivo}"
        agora["seguradas:" + loja] = valor
        if antes.get("seguradas:" + loja) != valor:
            avisos.append(f"{loja}: {seg} saídas seguradas pelo freio ({motivo})")
    erro = l.get("ultimo_erro")
    if erro:
        agora["erro:" + loja] = erro
        if antes.get("erro:" + loja) != erro:
            em = l.get("erro_em")
            avisos.append(f"{loja}: erro na leitura: {erro} (em {em})")
for chave in antes:
    if chave.startswith("loja:") and chave[5:] not in vistas:
        avisos.append(f"{chave[5:]}: sumiu do catalogo:status")
print("\n".join(f"{k}\t{v}" for k, v in agora.items()))
print("===AVISOS===")
print("\n".join(avisos))
') || exit 1

printf '%s\n' "$resultado" | sed '/^===AVISOS===$/,$d' > "$estado"
avisos=$(printf '%s\n' "$resultado" | sed '1,/^===AVISOS===$/d' | sed '/^$/d')
[ -n "$avisos" ] || exit 1
echo "Catálogo por arquivo:"
printf '%s\n' "$avisos"
exit 0
