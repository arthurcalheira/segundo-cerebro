#!/usr/bin/env bash
# Primeiro passo da rotina "Saúde do servidor" da Infra no OpenBot da VPS (openbot/plano-workspace.md).
# Versão Linux de saude-servidor.ps1 (27/10/2026). Chamada:
#   bash /var/lib/openbot/projetos/segundo-cerebro/openbot/scripts/saude-servidor.sh
# Só leitura na produção (`sudo -n /usr/local/sbin/vitrinista-status --saude`): containers, disco e linhas
# de erro do worker e da web nas últimas 24 h. Sai com 0 e imprime o resumo quando há algo fora do normal;
# sai com 1 quando está tudo bem, ou quando não conseguiu ler (aí imprime "sem resposta").
set -uo pipefail

saida=$(sudo -n /usr/local/sbin/vitrinista-status --saude 2>/dev/null)
grep -qx -- '---FIM' <<< "$saida" || { echo 'sem resposta do servidor'; exit 1; }

parte=''; servicos=(); disco=''; conta=0; erros=()
while IFS= read -r l; do
  if [[ $l == ---* ]]; then parte=$l; continue; fi
  case "$parte" in
    '') [ -n "$l" ] && servicos+=("$l") ;;
    ---DISCO) [ -n "$l" ] && disco=$(echo "$l" | tr -d ' ') ;;
    ---CONTA) [[ $l =~ ^[0-9]+$ ]] && conta=$l ;;
    ---ERROS) [ -n "$l" ] && erros+=("$l") ;;
  esac
done <<< "$saida"

problemas=()
for s in "${servicos[@]}"; do
  IFS=':' read -r nome estado saude <<< "$s"
  if [ "$estado" != running ] || { [ -n "$saude" ] && [ "$saude" != healthy ]; }; then
    problemas+=("container $nome: $estado${saude:+ $saude}")
  fi
done
[ ${#servicos[@]} -eq 0 ] && problemas+=('nenhum container listado')
uso=${disco//[^0-9]/}
[ -n "$uso" ] && [ "$uso" -ge 85 ] && problemas+=("disco do servidor em $disco")
[ "$conta" -gt 0 ] && problemas+=("$conta linhas de erro no log do worker e da web em 24 h")

[ ${#problemas[@]} -eq 0 ] && exit 1
( IFS=';'; s="${problemas[*]}"; echo "Problemas: ${s//;/; }" )
( IFS=','; s="${servicos[*]}"; echo "Containers: ${s//,/, }" )
echo "Disco: $disco"
if [ ${#erros[@]} -gt 0 ]; then echo 'Últimas linhas de erro:'; printf '%s\n' "${erros[@]}"; fi
exit 0
