# Plano do workspace "vitrinista" no Maestri

Escrito em 10/10/2026 pelo Curador. Ponto de partida: [[2026-10-10-comando-pelo-maestri]] (código feito na nuvem, comando no notebook).

## O que limita tudo: memória

Medido em 10/10 com o Curador aberto: **3,6 GB no total e 0,2 GB livres**. Os maiores consumidores eram o Defender (212 MB), dois processos `claude` (201 e 92 MB), o Maestri (cerca de 185 MB em três processos) e o Brave (78 MB).

Um terminal de Claude Code a mais custa de 100 a 300 MB. Um portal é um navegador embutido e custa outro tanto. Daí a regra do workspace:

- **No máximo dois processos de agente ao mesmo tempo:** o Curador e um recruta. Terminal Shell (sem modelo) quase não pesa.
- **Nada fica de pé "por via das dúvidas".** Recruta e portal são abertos para uma tarefa e saem quando ela termina.
- **Não usar floors com git.** Um floor com git cria uma cópia de trabalho do projeto, com as dependências copiadas, ou seja, desenvolvimento local, que foi descartado. Um floor para revisar um PR (`--pull-request`) também clona.

## O canvas (andar térreo)

| Nó | Tipo | Quando existe | Para quê |
|---|---|---|---|
| **Curador** | Claude Code, Maestro | sempre | Você conversa com ele: vault, despacho, acompanhamento |
| **Agora** | nota | sempre | Três a cinco linhas: sessão na nuvem rodando, o que espera você, próximo passo. O que importa vai para o vault |
| **Nuvem** | terminal Shell em `../ferramenta-grupos` | só durante o despacho (segundos) | Roda `claude --cloud "<tarefa>"`, que cria a sessão e devolve o link. Não fica conectado: a conta não permite (10/10) |
| **Sessão na nuvem** | portal no link da sessão | na fase de conversa de uma sessão | Mostra a sessão ao vivo no canvas; você conversa ali e o Curador lê. Um por vez |
| **VPS** | terminal Shell com `ssh` | durante um deploy ou diagnóstico | `atualizar.sh`, logs, `cli.sh`. Cada comando só depois do seu ok |
| **Painel** | portal | para conferir uma tela | O painel em produção depois de um deploy, a 375 px e a 1280 px |

Por que **Shell** e não um Claude recrutado para a Nuvem e o VPS: os dois só rodam comandos que o Curador escreve. Um segundo modelo ali gastaria memória e cota sem decidir nada.

O que muda com o terminal **VPS**: a nuvem não alcança o VPS (o proxy bloqueia; `ferramenta-grupos/AGENTS.md`, "Ambiente de nuvem"). Hoje todo comando do VPS volta para você colar. Do notebook, o Curador pode mandar o comando ao terminal, ler a saída e conferir, e você só aprova.

## Como uma tarefa de código anda

1. **Você pede aqui.** O Curador põe a cópia local no `master`, lê o `STATE.md` do projeto e escreve a tarefa para ser lida sem contexto nenhum: objetivo, spec, como conferir, e "ao terminar, atualize o STATE.md e dê push na branch".
2. **Despacho.** O Curador abre o terminal **Nuvem** e roda `claude --cloud "<tarefa>"`. A sessão é registrada em `10-vitrinista/sessoes-nuvem.md`.
3. **Fase de conversa** (brainstorming e aprovação da spec, como o projeto já faz). **Mudou em 10/10:** o plano era deixar o terminal Nuvem conectado à sessão, mas a conta não permite conectar a uma sessão que já existe. A conversa acontece num portal do canvas aberto no link da sessão (ou no claude.ai, ou no app do Claude). Pelo portal o Curador lê a conversa e anota as decisões em `decisoes/`.
4. **Fase longa** (execução do plano, revisões). A sessão segue sozinha. Instrução nova vai por `claude -p "<mensagem>" --cloud <id>`, sem abrir nada (conferido em 10/10).
5. **Resultado.** A rotina "Vigia da nuvem" (abaixo) avisa o Curador quando a branch recebe push. Ele lê o `STATE.md` e o diff, resume para você e atualiza o diário, as pendências e as decisões.
6. **Integração.** Merge no `master` com o seu ok. Deploy pelo terminal VPS (`atualizar.sh`), também com o seu ok. Conferência no portal **Painel**.

## Rotinas (Maestri)

Elas disparam no terminal do Curador. Com um `--pre-run` que só sai com código 0 quando há algo novo, a rotina não gasta tokens enquanto nada muda.

| Rotina | Quando | O que faz |
|---|---|---|
| Abertura | todo dia às 9h | Rotina de abertura do papel (pull, estados, diário, inbox) |
| Vigia da nuvem | a cada 20 min | O pre-run faz `git fetch` e compara as branches com a última leitura (script em `maestri/scripts/`). Só dispara quando alguma branch mudou, e o comando pede ao Curador para trazer o resultado |
| Conferente do site | a cada 1 h (desde 22/10) | O pre-run (`maestri/scripts/conferente-site.ps1`) lê no servidor `./deploy/cli.sh site:conferir` (a linha do ssh fica em `.maestri/servidor.txt`, fora do git) e só dispara quando aparece divergência nova entre o site e o painel, ou loja sem leitura de promoção. O Curador confere e manda o conserto ao construtor ([[2026-10-22-conferente-do-site]]) |
| Fechamento | todo dia às 21h30 | Skill `fechar-sessao` |

Rotina só dispara com o notebook ligado e o Maestri aberto. Se o terminal estiver ocupado, ela pula (o padrão).

Criadas e testadas em 10/10. O que os testes mostraram sobre o `--pre-run` no Windows:

- Ele roda no `cmd.exe`, já dentro da pasta do workspace, com `%MAESTRI_WORKSPACE_DIR%` definida e o `git` no PATH.
- **Aspa dupla no pre-run faz ele não executar nada, sem erro.** Como o caminho do vault tem espaço, a saída é entrar na pasta com `cd /d %MAESTRI_WORKSPACE_DIR% &&` e usar caminho relativo, sem aspas.
- Com o terminal alvo ocupado, o disparo é pulado antes do pre-run (uma observação). Por isso o vigia não perde aviso: o estado dele só avança quando o script roda.
- Rotina `--once` some da lista depois de disparar, mesmo quando o disparo foi pulado.

## Pelo celular

`/remote-control` dentro do Curador. Dá para pedir tarefa e aprovar deploy pelo app do Claude, com o notebook ligado.

## Ordem de implantação

| # | Passo | Quem |
|---|---|---|
| 1 | Nota **Agora** no canvas, ligada ao Curador | Curador |
| 2 | Testar o caminho da nuvem com a primeira tarefa real: o `claude --cloud` num terminal Shell, se a sessão continua depois de fechar o terminal, e se `claude -p ... --cloud <id>` entrega a mensagem. Corrigir a skill `despachar-nuvem` com o resultado | Curador |
| 3 | Script do vigia e as três rotinas, cada uma testada com `maestri routine run` | Curador |
| 4 | Chave SSH para o VPS. O Curador gera a chave `ed25519` no notebook e abre o terminal VPS; você roda o `ssh-copy-id` digitando a senha nova do root (a troca de senha ainda está pendente: `ferramenta-grupos/STATE.md`, item 4). Depois disso, o Curador entra sem senha | você + Curador |
| 5 | Primeiro deploy pelo terminal VPS: a 5F que está esperando (`./deploy/atualizar.sh`), com conferência no portal | Curador, com o seu ok |
| 6 | Atualizar `maestri/papeis/curador.md` (terminais Shell, VPS, rotinas) e `maestri/configurar-no-windows.md`, e registrar a decisão do VPS | Curador |

## Não confirmado

- Mandar mensagem à sessão digitando no campo do portal (o campo "Prompt" existe; não foi usado, porque `claude -p ... --cloud <id>` já entrega).

## Confirmado em 10/10: a sessão na nuvem aparece no canvas por um portal

Um portal aberto no link da sessão (`claude.ai/code/session_...`) mostra a sessão ao vivo, depois de um login manual no claude.ai. O Curador lê a conversa pelo `maestri portal snapshot`. Custo medido: o Maestri foi de 217 MB para 356 a 384 MB com a sessão aberta (pico de 544 MB na tela de login), e a memória livre ficou entre 0,06 e 0,12 GB. Cabe **um** portal, com o resto fechado. A barra da sessão também mostra o uso da cota da semana.
- O vigia de verdade, num push real de uma sessão na nuvem. A entrega do comando no terminal do Curador com o `{{output}}` preenchido foi confirmada por um disparo único de teste (10/10, 14h21).
- Quanto um terminal Shell e um portal pesam de fato no Windows. Medir no passo 2 e no 5.
- O nome do terminal no canvas aparece como "Maestro", e não "curador" como diz o `STATE.md` do vault. Não muda nada no funcionamento.
