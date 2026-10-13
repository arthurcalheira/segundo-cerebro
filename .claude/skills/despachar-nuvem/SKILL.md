---
name: despachar-nuvem
description: Manda uma tarefa do projeto ferramenta-grupos para uma sessão do Claude Code na nuvem, registra no vault e acompanha até trazer o resultado. Use para trabalho longo ou pesado demais para o notebook (suítes de teste, plano inteiro) ou quando pedirem para mandar para a nuvem.
---

# Despachar para a nuvem

A sessão na nuvem clona `ferramenta-grupos` do GitHub, na branch atual (não a cópia local), e roda num container Linux preparado pelo `.claude/hooks/session-start.sh` do projeto. Ela não vê este vault e gasta a mesma cota do plano do Claude.

## Função

Toda sessão tem uma função, com o papel em `maestri/papeis/<função>.md`. Cole o texto do papel no início da tarefa.

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
- Cota da semana: abra `claude` no terminal recrutado e leia o `7d:` na barra de baixo; saia com `/exit`. Funcionou em 10/10 e na manhã de 11/10; na noite de 11/10 a barra mostrou só `Eff:--`, sem a cota, em duas tentativas. Não há leitura pela ferramenta de shell. Sem leitura, diga que o valor é desconhecido e peça que ela olhe o `/usage`; não abra um plano inteiro no escuro. Mande ao terminal o que começa com `/` pela ferramenta PowerShell: o Git Bash troca `/exit` por um caminho do Windows.
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

- Num terminal Shell recrutado pelo Maestro (`maestri recruit "Nuvem" --preset "Shell" --dir <pasta>`): `claude --cloud "<tarefa>"`, enviado com `maestri ask "Nuvem" --raw '...\n'`. Conferido em 10/10: o comando cria a sessão, imprime o ID e o link `claude.ai/code/session_...` e devolve o prompt em segundos, sem ficar conectado. Dispense o terminal em seguida.
- O `--cloud` exige terminal interativo: pela ferramenta de shell ele recusa (`--cloud requires an interactive terminal`) sem criar nada. Tarefa longa, com várias linhas e aspas: grave o texto em `.maestri/tarefa.md` e um script `.maestri/despachar.sh` com `cd "<pasta do repositório>" && claude --cloud "$(cat "<caminho da tarefa>")"`, e rode no terminal recrutado com `& 'C:/Program Files/Git/usr/bin/bash.exe' -l '<caminho do script>'`. Apague os dois arquivos depois.
- Na primeira vez num caminho novo, o Claude Code pergunta se a pasta é confiável, com "No, exit" selecionado: `\e[B` e depois `\n`, conferindo a seleção com `maestri check` entre os dois.
- **Conectar um terminal a uma sessão que já existe não funciona nesta conta** (10/10): `claude --cloud <id>` responde `Attaching to an existing cloud session is not enabled for your account`. A conversa da sessão (perguntas do brainstorming, aprovação da spec) aparece no claude.ai, no app do Claude ou num portal do Maestri aberto no link dela.
- Portal (conferido em 10/10): `maestri portal create <link da sessão> "Sessão na nuvem"`. O login no claude.ai é feito à mão, uma vez. Para ler a conversa, `maestri portal snapshot "Sessão na nuvem"` e as linhas depois de `feed "Chat messages"` (cada mensagem aparece como `You said: …` ou `Claude responded: …`); o `portal evaluate` é barrado pela política da página. O portal custa de 150 a 330 MB: abra só quando for ler ou conversar, e feche só com pedido.
- Registre em `10-vitrinista/sessoes-nuvem.md`: data, função, tarefa em uma linha, ID ou link `claude.ai/code/...`, branch e situação `rodando`.

## Acompanhar

- Instrução nova: `claude -p "<mensagem>" --cloud <id>`, de dentro da pasta do repositório. Conferido em 10/10: responde `Sent to cloud session` e sai; pode rodar pela ferramenta de shell. A resposta da sessão não volta por aqui.
- Andamento: o link da sessão no claude.ai ou no app do Claude.
- Branch parada não quer dizer sessão parada (11/10): o Construtor fez quatro tarefas sem push e depois o processo dele foi reiniciado. Peça na tarefa "push a cada tarefa". Com mais de uma hora sem push durante uma execução, mande uma mensagem pedindo o estado no `STATE.md`: ela também acorda a sessão.
- Resultado: `git -C ../ferramenta-grupos fetch origin`, depois o `STATE.md` e o diff da branch da sessão. A hora dos commits da nuvem vem em UTC: 3 horas a mais que a do notebook, e a data vira antes.
- O vigia avisa a cada push e às vezes repete um aviso já trazido: confira com o `fetch` se há commit novo antes de registrar de novo.
- Portal: o login no claude.ai não ficou guardado de um dia para o outro (11/10). Antes de abrir um, tente o `STATE.md` da branch e uma mensagem à sessão.
- Continuar no notebook: `claude --teleport <id>` num terminal em `../ferramenta-grupos` com a árvore limpa. Vira uma cópia local, e o que for feito nela não volta para a nuvem.

## Fechar

- A rotina "Vigia da nuvem" do Maestri avisa quando uma branch do projeto ou do vault muda no GitHub.
- Entrega em arquivo (`revisor`, `conteudo`): leve para o inbox sem trocar de branch, `git -C ../ferramenta-grupos show origin/<branch>:entregas/<arquivo> > 00-inbox/<arquivo>`, e rode a `processar-inbox`. A branch de entrega não vai para o `master`.
- Entrega do `pesquisador`: se a sessão deu push na branch do vault, o Obsidian Git traz no próximo pull; se deu push numa branch própria (não confirmado qual das duas a nuvem faz), `git show origin/<branch>:00-inbox/<arquivo> > 00-inbox/<arquivo>`. Depois, `processar-inbox`.
- Achados do `revisor`: resuma na conversa e mande os confirmados ao construtor (`claude -p "<mensagem>" --cloud <id>`).
- Atualize a linha em `sessoes-nuvem.md` (situação `pronta` ou `falhou`, resultado em uma linha, link do PR se houver) e escreva uma linha no diário do dia.
- Merge no `master` e deploy seguem as regras do projeto: só com confirmação.
- Levar ao `master`, quando houver o ok: só depois que o `STATE.md` da branch disser que terminou e sem pergunta em aberto. Confira que o `master` não andou (`git rev-list --count origin/<branch>..origin/master` igual a 0), que não entrou `.env` nem nada com cara de segredo e quantas migrações vêm. O avanço direto é `git -C ../ferramenta-grupos push origin <sha da ponta>:refs/heads/master`, seguido de `git pull` na cópia local; sem `--force`, o GitHub recusa se não for avanço direto. O deploy está em `maestri/papeis/curador.md`.
