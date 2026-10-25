# Plano do workspace da Vitrinista no OpenBot

Escrito em 25/10/2026 pelo Gerente, na troca do Maestri pelo OpenBot ([[2026-10-25-comando-pelo-openbot]]). O plano do Maestri, com o que os testes de lá ensinaram, ficou em `90-arquivo/maestri/plano-workspace.md`.

## O que limita tudo: memória

O notebook tem 3,7 GB. A suíte do worker leva cerca de 1 h e cai por falta de memória com outra coisa rodando junto; duas rodadas de teste ou render com teste não cabem (24/10). Daí a regra:

- **No máximo dois agentes trabalhando ao mesmo tempo:** o Gerente e um construtor. Um segundo construtor pode existir parado, mas não roda suíte, build nem render enquanto o outro roda.
- **Aba do navegador do OpenBot** só para uma tarefa (conferir o painel, ler a sessão na nuvem) e fechada depois.

## Agentes

| Agente | Onde trabalha | Para quê |
|---|---|---|
Criados em 25/10, na seção "Vitrinista" da barra lateral, todos na conta Claude principal e com o Computer Use desligado, menos o Gerente.

| Agente | Modelo | Onde trabalha | Para quê |
|---|---|---|---|
| **Gerente** | Opus 5.5 | pasta própria do OpenBot, com o vault e o projeto por caminho absoluto | Você conversa com ele: vault, despacho, acompanhamento, merge e deploy com o seu ok. Papel: `openbot/papeis/gerente.md` |
| **Engenharia** (construtor) | Opus 5.5 | worktree `claude code\ferramenta-grupos-menu` | Um plano de código por vez. Papel: `openbot/papeis/construtor.md`. Um segundo construtor, se houver, ganha outro nome funcional |
| **QA** | Opus 5.5 | worktree `claude code\ferramenta-grupos-vitrine` | Revisa e testa o que a Engenharia entregou, só em plano grande ou sensível. Nunca corrige. Papel: `openbot/papeis/revisor.md` |
| **Infra** | Haiku 5.5 | pasta própria do OpenBot; roda os scripts de `openbot/scripts/` | Só leitura: Vigia da nuvem, Conferente do site e Saúde do servidor. Quando um script acha algo, avisa o Gerente |
| Sessão na nuvem | — | GitHub | Plano grande demais para o notebook, ou pesquisador e conteúdo. Skill `despachar-nuvem` |

A worktree `-catalogo` (vídeo) sobrou do Maestri, sem agente.

## Como uma tarefa de código anda

1. **Você pede ao Gerente.** Ele lê o `STATE.md` do projeto e escreve a tarefa para ser lida sem contexto: objetivo, branch e commit de partida, spec, como conferir, o que já foi decidido e o que não pode (merge, deploy, envio real).
2. **Despacho.** Construtor local: `openbot.send_message` com `expectsReply: true`. Nuvem: skill `despachar-nuvem`, com registro em `10-vitrinista/sessoes-nuvem.md`.
3. **Perguntas.** O construtor manda ao Gerente com o bloco "Preciso de você"; o Gerente responde o que já está decidido e traz para você só o que é seu.
4. **Resultado.** O construtor manda `Status / Result / Evidence`; o push na branch também aparece no Vigia. O Gerente lê o `STATE.md` e o diff, resume para você e atualiza o diário, as pendências e as decisões.
5. **Integração.** Merge no `master` com o seu ok. Deploy pela cópia de teste e depois pela produção (`./deploy/atualizar.sh`), também com o seu ok, e conferência do servidor e do painel.

## Rotinas (OpenBot)

Abertura e Fechamento rodam no Gerente; Vigia, Conferente e Saúde do servidor, na Infra, que passa ao Gerente só o que o script achou. Vigia, Conferente e Saúde usam `limitPolicy: skip` (na cota esgotada, pulam em vez de acumular).

Cada execução abre uma sessão nova, sem a conversa: a instrução de cada rotina é completa. Quando não há nada a dizer, a rotina termina com `openbot.routine_no_update`, e a execução fica recolhida no chat.

| Rotina | Quando | O que faz |
|---|---|---|
| Abertura | todo dia às 9h | A abertura do papel: fetch e pull do projeto, os dois `STATE.md`, o diário, o inbox e o sync do vault |
| Vigia da nuvem | a cada 30 min | Roda `openbot/scripts/vigia-nuvem.ps1`. Saída 1: nada mudou, termina sem texto. Saída 0: a linha diz qual branch mudou; o Gerente lê o `STATE.md` e o diff dela e resume |
| Conferente do site | a cada 1 h | Roda `openbot/scripts/conferente-site.ps1` (lê `./deploy/cli.sh site:conferir` no servidor, com a linha do ssh em `.openbot/servidor.txt`). Saída 0: divergência nova; o Gerente confere e manda o conserto ao construtor ([[2026-10-22-conferente-do-site]]); subir ao ar, só com o seu ok |
| Saúde do servidor | todo dia às 8h30 | Roda `openbot/scripts/saude-servidor.ps1` (só leitura: containers, disco, linhas de erro do worker e da web em 24 h). Saída 0: algo fora do normal; o Gerente diagnostica e diz a ela |
| Fechamento | todo dia às 21h30 | Skill `fechar-sessao` |

Diferente do Maestri: lá o `--pre-run` barrava o disparo sem gastar token. No OpenBot não há esse filtro; a rotina sempre abre uma sessão curta, roda o script e para. Por isso Vigia e Conferente ficam na Infra, no Haiku, e o Vigia roda a cada 30 min (48 vezes por dia) em vez de 20.

Rotina só roda com o notebook ligado e o OpenBot aberto. O que venceu com ele desligado é pulado (o padrão `skip`); a Abertura e a Saúde do servidor usam `run-once`, para rodar ao abrir se a hora passou com ele fechado.

## Não confirmado

- `claude --cloud` exige terminal interativo. No Maestri ia por um terminal recrutado; aqui o caminho é abrir uma janela de console (skill `despachar-nuvem`), ainda não testado.
- Ler a cota da semana (`/usage`) sem o `maestri check`: pela janela de console com `computer_use`, ainda não testado.
- Acompanhar pelo celular: o OpenBot não foi conferido para isso.
