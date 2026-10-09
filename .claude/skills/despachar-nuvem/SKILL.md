---
name: despachar-nuvem
description: Manda uma tarefa do projeto ferramenta-grupos para uma sessão do Claude Code na nuvem, registra no vault e acompanha até trazer o resultado. Use para trabalho longo ou pesado demais para o notebook (suítes de teste, plano inteiro) ou quando pedirem para mandar para a nuvem.
---

# Despachar para a nuvem

A sessão na nuvem clona `ferramenta-grupos` do GitHub, na branch atual (não a cópia local), e roda num container Linux preparado pelo `.claude/hooks/session-start.sh` do projeto. Ela não vê este vault e gasta a mesma cota do plano do Claude.

## Antes

- Em `../ferramenta-grupos`: `git status` limpo e a branch no GitHub. O que não estiver no GitHub não chega à sessão. O push sai do notebook: confirme antes.
- Escreva a tarefa autossuficiente: objetivo, spec ou arquivos de referência, como conferir (suíte, `next build`) e "ao terminar, atualize o STATE.md e dê push na branch".

## Despachar

- Num terminal próprio em `../ferramenta-grupos` (um agente recrutado pelo Maestro ou um terminal novo no canvas): `claude --cloud "<tarefa>"`. O comando mostra a preparação do container, e não está confirmado se ele volta sozinho: não rode pela sua ferramenta de shell.
- Registre em `10-vitrinista/sessoes-nuvem.md`: data, tarefa em uma linha, ID ou link `claude.ai/code/...`, branch e situação `rodando`.

## Acompanhar

- Instrução nova: `claude -p "<mensagem>" --cloud <id>`. O comando só entrega a mensagem e sai, sem resposta; pode rodar pela ferramenta de shell.
- Andamento: o link da sessão no claude.ai ou no app do Claude.
- Resultado: `git -C ../ferramenta-grupos fetch origin`, depois o `STATE.md` e o diff da branch da sessão.
- Continuar no notebook: `claude --teleport <id>` num terminal em `../ferramenta-grupos` com a árvore limpa. Vira uma cópia local, e o que for feito nela não volta para a nuvem.

## Fechar

- Atualize a linha em `sessoes-nuvem.md` (situação `pronta` ou `falhou`, resultado em uma linha, link do PR se houver) e escreva uma linha no diário do dia.
- Merge no `master` e deploy seguem as regras do projeto: só com confirmação.
