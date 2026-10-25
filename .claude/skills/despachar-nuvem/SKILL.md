---
name: despachar-nuvem
description: Manda uma tarefa do projeto ferramenta-grupos para uma sessão do Claude Code na nuvem, registra no vault e acompanha até trazer o resultado. Use para trabalho longo ou pesado demais para o notebook (suítes de teste, plano inteiro) ou quando pedirem para mandar para a nuvem.
---

# Despachar para a nuvem

A sessão na nuvem clona `ferramenta-grupos` do GitHub, na branch atual (não a cópia local), e roda num container Linux preparado pelo `.claude/hooks/session-start.sh` do projeto. Ela não vê este vault e gasta a mesma cota do plano do Claude.

## Função

Toda sessão tem uma função, com o papel em `openbot/papeis/<função>.md`. Cole o texto do papel no início da tarefa.

Caminhos: o Gerente trabalha fora do vault. Abaixo, "vault" é `C:\Users\arthu\claude code\segundo-cerebro` e `../ferramenta-grupos` é `C:\Users\arthu\claude code\ferramenta grupos`; use o caminho absoluto, entre aspas.

| Função | Aberta em | Entrega |
|---|---|---|
| `construtor` | `../ferramenta-grupos` | código e `STATE.md` na branch da sessão |
| `revisor` | `../ferramenta-grupos`, na branch do construtor | `entregas/AAAA-MM-DD-revisao-<plano>.md` numa branch própria |
| `conteudo` | `../ferramenta-grupos` (o projeto é privado: do vault a sessão não lê o `PRODUCT.md`) | `entregas/AAAA-MM-DD-<assunto>.md` na branch da sessão |
| `pesquisador` | este vault | arquivo novo em `00-inbox/` |

- Um construtor por vez: dois planos de código em paralelo brigam nas migrações e nos mesmos arquivos. Pesquisador e conteúdo podem rodar junto com ele.
- Cada sessão a mais gasta a mesma cota: avise antes de abrir a terceira.

## Antes

- Em `../ferramenta-grupos` (cópia local): se o `git status` mostrar trabalho local sem commit, pare e pergunte antes de trocar de branch. Depois, `git checkout <branch de partida>` e `git pull`. A sessão parte do que está no GitHub nessa branch; normalmente o `master`, ou a branch do plano em andamento segundo o `STATE.md`.
- Pesquisador: a sessão parte do que está no GitHub do vault. Confira que o Obsidian Git já enviou o que ela precisa ler (`git status` limpo e `git log origin/<branch>..HEAD` vazio).
- Cota da semana: abra uma janela de console com `claude` (como em "Despachar") e leia o `7d:` na barra de baixo, ou mande `/usage` e leia "Current week (all models)"; a leitura da janela é pelo `computer_use` (selecione a janela pelo título e pelo tamanho). Feche com Esc e `/exit`. Não há leitura pela ferramenta de shell. No Maestri isso funcionou em 10, 11 e 13/10 (na noite de 11/10 a barra mostrou só `Eff:--`); no OpenBot ainda não foi testado. Sem leitura, diga que o valor é desconhecido e peça que ela olhe o `/usage`; não abra um plano inteiro no escuro.
- Referência de gasto: a 5G inteira (spec, plano, nove tarefas, revisão em lentes) começou com a semana em 53%; às 9h02 do dia seguinte, com quatro tarefas feitas, estava em 58%. O valor ao fim não foi lido.
- Escreva a tarefa autossuficiente: o papel, objetivo, spec ou arquivos de referência, como conferir (suíte, `next build`) e "ao terminar, atualize o STATE.md e dê push na branch". A sessão não lê o vault: o que ela precisa de uma nota daqui vai escrito na tarefa.
- Toda tarefa de construtor leva também (foi o que funcionou no 5C e na 5G):
  - de qual commit do `master` ela parte;
  - primeiro, em commits separados, o que o `STATE.md` do projeto traz errado e o que ficou combinado desde a última sessão;
  - o que já foi decidido e o que ele deve perguntar em vez de decidir;
  - parar depois da spec e esperar a aprovação na sessão;
  - push a cada tarefa;
  - sem merge e sem deploy.

## Despachar

- O `--cloud` exige terminal interativo: pela ferramenta de shell ele recusa (`--cloud requires an interactive terminal`) sem criar nada. Conferido em 10/10, num terminal de verdade: o comando cria a sessão, imprime o ID e o link `claude.ai/code/session_...` e devolve o prompt em segundos, sem ficar conectado.
- No OpenBot (ainda não testado): grave a tarefa em `.openbot/tarefa.md` do vault e um script `.openbot/despachar.sh` com `cd "<pasta do repositório>" && claude --cloud "$(cat "<caminho da tarefa>")"; read -p "Enter para fechar"`, e abra uma janela de console com `Start-Process 'C:/Program Files/Git/usr/bin/bash.exe' -ArgumentList '-l','<caminho do script>'`. Leia o ID e o link na janela pelo `computer_use` e feche a janela. Apague os dois arquivos depois. Na primeira vez que der certo, troque esta linha por "conferido em <data>".
- **Outra conta do Claude, quando a cota da principal acabar:** no Maestri era o preset com `--account`, que define o `CLAUDE_CONFIG_DIR` (conferido em 13/10). No OpenBot, a conta de cada agente aparece em `openbot.list_models`; para a nuvem, defina `CLAUDE_CONFIG_DIR` na pasta da outra conta antes do `claude` no script de despacho. Não conferido: qual é essa pasta no notebook e o acesso da conta nova ao repositório privado. Na primeira vez da conta aparecem o tema, o aviso de segurança e a pergunta da pasta: responda pelo `computer_use`.
- Na primeira vez num caminho novo, o Claude Code pergunta se a pasta é confiável, com "No, exit" selecionado: seta para baixo e Enter, conferindo a seleção na janela entre os dois.
- **Conectar um terminal a uma sessão que já existe não funciona nesta conta** (10/10): `claude --cloud <id>` responde `Attaching to an existing cloud session is not enabled for your account`. A conversa da sessão (perguntas do brainstorming, aprovação da spec) aparece no claude.ai, no app do Claude ou numa aba do navegador do OpenBot aberta no link dela.
- Aba do navegador do OpenBot (`openbot_browser`): `list_tabs` primeiro (o login no claude.ai pode já estar aberto), depois abra o link da sessão e leia a conversa por um snapshot. No portal do Maestri (10/10) as mensagens apareciam depois de `feed "Chat messages"`, como `You said: …` ou `Claude responded: …`; no navegador do OpenBot ainda não foi conferido. Login: siga a orientação de autenticação do `openbot_browser` e peça a ela o que for senha ou 2FA (`request_takeover`). Feche a aba quando terminar: o notebook tem pouca memória.
- Registre em `10-vitrinista/sessoes-nuvem.md`: data, função, tarefa em uma linha, ID ou link `claude.ai/code/...`, branch e situação `rodando`.

## Acompanhar

- Instrução nova: `claude -p "<mensagem>" --cloud <id>`, de dentro da pasta do repositório. Conferido em 10/10: responde `Sent to cloud session` e sai; pode rodar pela ferramenta de shell. A resposta da sessão não volta por aqui.
- Andamento: o link da sessão no claude.ai ou no app do Claude.
- Branch parada não quer dizer sessão parada (11/10): o Construtor fez quatro tarefas sem push e depois o processo dele foi reiniciado. Peça na tarefa "push a cada tarefa". Com mais de uma hora sem push durante uma execução, mande uma mensagem pedindo o estado no `STATE.md`: ela também acorda a sessão.
- Resultado: `git -C ../ferramenta-grupos fetch origin`, depois o `STATE.md` e o diff da branch da sessão. A hora dos commits da nuvem vem em UTC: 3 horas a mais que a do notebook, e a data vira antes.
- O vigia avisa a cada push e às vezes repete um aviso já trazido: confira com o `fetch` se há commit novo antes de registrar de novo.
- Navegador: no portal do Maestri o login no claude.ai não ficou guardado de um dia para o outro (11/10); no OpenBot as abas guardam o login entre sessões. Antes de abrir uma, tente o `STATE.md` da branch e uma mensagem à sessão.
- Continuar no notebook: `claude --teleport <id>` num terminal em `../ferramenta-grupos` com a árvore limpa. Vira uma cópia local, e o que for feito nela não volta para a nuvem.

## Fechar

- A rotina "Vigia da nuvem" do Gerente, no OpenBot, avisa quando uma branch do projeto ou do vault muda no GitHub (`openbot/plano-workspace.md`).
- Entrega em arquivo (`revisor`, `conteudo`): leve para o inbox sem trocar de branch, `git -C ../ferramenta-grupos show origin/<branch>:entregas/<arquivo> > 00-inbox/<arquivo>`, e rode a `processar-inbox`. A branch de entrega não vai para o `master`.
- Entrega do `pesquisador`: se a sessão deu push na branch do vault, o Obsidian Git traz no próximo pull; se deu push numa branch própria (não confirmado qual das duas a nuvem faz), `git show origin/<branch>:00-inbox/<arquivo> > 00-inbox/<arquivo>`. Depois, `processar-inbox`.
- Achados do `revisor`: resuma na conversa e mande os confirmados ao construtor (`claude -p "<mensagem>" --cloud <id>`).
- Atualize a linha em `sessoes-nuvem.md` (situação `pronta` ou `falhou`, resultado em uma linha, link do PR se houver) e escreva uma linha no diário do dia.
- Merge no `master` e deploy seguem as regras do projeto: só com confirmação.
- Levar ao `master`, quando houver o ok: só depois que o `STATE.md` da branch disser que terminou e sem pergunta em aberto. Confira que o `master` não andou (`git rev-list --count origin/<branch>..origin/master` igual a 0), que não entrou `.env` nem nada com cara de segredo e quantas migrações vêm. O avanço direto é `git -C ../ferramenta-grupos push origin <sha da ponta>:refs/heads/master`, seguido de `git pull` na cópia local; sem `--force`, o GitHub recusa se não for avanço direto. O deploy está em `openbot/papeis/gerente.md`.
