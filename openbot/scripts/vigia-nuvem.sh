#!/usr/bin/env bash
# Primeiro passo da rotina "Vigia da nuvem" da Infra no OpenBot da VPS (openbot/plano-workspace.md).
# Versão Linux de vigia-nuvem.ps1 (27/10/2026). Chamada:
#   bash /var/lib/openbot/projetos/segundo-cerebro/openbot/scripts/vigia-nuvem.sh
# Olha o projeto e o vault. Sai com 0 e imprime uma linha só quando alguma branch mudou no GitHub;
# sai com 1 quando nada mudou (a rotina encerra com openbot.routine_no_update).
set -uo pipefail

vault=$(cd "$(dirname "$0")/../.." && pwd)
estado="$vault/.openbot/vigia-refs.txt"
# soDeFora (1): ignora o que o HEAD local já contém. No vault só interessa o que veio de outra máquina.
repos=("projeto|$(dirname "$vault")/ferramenta-grupos|0" "vault|$vault|1")

declare -A antes agora
if [ -f "$estado" ]; then
  while read -r k v; do [ -n "${k:-}" ] && [ -n "${v:-}" ] && antes[$k]=$v; done < "$estado"
fi

tudo=()
for r in "${repos[@]}"; do
  IFS='|' read -r nome pasta soDeFora <<< "$r"
  prefixo="$nome:"
  doRepo=()
  for k in "${!antes[@]}"; do [[ $k == "$prefixo"* ]] && doRepo+=("$k"); done

  if ! git -C "$pasta" fetch origin --prune -q 2>/dev/null; then
    # Sem rede: mantém a última leitura deste repositório.
    for k in "${doRepo[@]}"; do agora[$k]=${antes[$k]}; done
    continue
  fi

  declare -A refs=()
  while read -r b s; do
    [[ $b == origin/* && $b != origin/HEAD ]] && refs[$b]=$s
  done < <(git -C "$pasta" for-each-ref --format='%(refname:short) %(objectname:short)' refs/remotes/origin)

  for b in $(printf '%s\n' "${!refs[@]}" | sort); do
    k="$prefixo$b"
    agora[$k]=${refs[$b]}
    # Primeira leitura do repositório: só grava a referência.
    if [ ${#doRepo[@]} -eq 0 ] || [ "${antes[$k]:-}" = "${refs[$b]}" ]; then continue; fi
    if [ "$soDeFora" = 1 ] && git -C "$pasta" merge-base --is-ancestor "${refs[$b]}" HEAD 2>/dev/null; then continue; fi
    assunto=$(git -C "$pasta" log -1 --format=%s "${refs[$b]}")
    if [ -n "${antes[$k]:-}" ]; then tudo+=("$nome $b ${antes[$k]}..${refs[$b]} ($assunto)")
    else tudo+=("$nome $b nova em ${refs[$b]} ($assunto)"); fi
  done
  for k in "${doRepo[@]}"; do
    b=${k#"$prefixo"}
    [ -z "${refs[$b]:-}" ] && tudo+=("$nome $b apagada")
  done
  unset refs
done

mkdir -p "$(dirname "$estado")"
for k in "${!agora[@]}"; do echo "$k ${agora[$k]}"; done | sort > "$estado"

[ ${#tudo[@]} -eq 0 ] && exit 1
( IFS='|'; s="${tudo[*]}"; echo "${s//|/ | }" )
exit 0
