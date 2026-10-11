---
tipo: decisao
data: 2026-10-10
status: valendo
fonte: conversa com o Curador, 10/10/2026
---
# Projeto comandado pelo Maestri, código na nuvem

**Decisão:** o Vitrinista (`arthurcalheira/ferramenta-grupos`) passa a ser comandado pelo Curador, no Maestri. O código continua sendo feito em sessões do Claude Code na nuvem, abertas por `claude --cloud` (skill `despachar-nuvem`), em vez de pelo claude.ai.

**Por quê:** a ideia é ter um só lugar para mandar tarefas, acompanhar as branches e registrar no vault. Programar no notebook foi descartado por causa dos 3,7 GB de RAM, que não aguentam a stack inteira (ver `ferramenta-grupos/STATE.md`, "Máquina de dev").

**Onde entrou:** ainda não entrou no projeto; o `AGENTS.md` de lá já lê o segundo cérebro no início da sessão. No vault, as notas `maestri/papeis/curador.md` e [[sessoes-nuvem]].

**Funções (mesma conversa, 10/10):** cada sessão na nuvem tem uma função, com o papel em `maestri/papeis/`: construtor, pesquisador, conteúdo e revisor. O Curador orquestra. Um construtor por vez; pesquisador e conteúdo podem rodar junto. Agentes recrutados no canvas ficam de fora por causa da memória: lá, só terminais Shell (Nuvem e VPS) e, sob demanda, um conferente com portal.

**Como usar, para gastar menos (mesma conversa, 10/10, aceito por "vamos seguir com a sua sugestão"):** um construtor por vez e nada em paralelo, porque o limite real é a cota da semana (39% usada no sábado, com aviso de que acaba antes de sexta). Sem revisor separado. Pesquisador e conteúdo só quando sobrar cota perto do reset. A conversa com o agente é pelo app do Claude; o portal no canvas fica para quando o Curador precisar ler a conversa. O Curador roda no Sonnet (`.claude/settings.local.json`, só no notebook). O Curador passa a ter uma chave SSH para o VPS, e cada deploy continua pedindo confirmação.

**Alternativas descartadas:** desenvolver no notebook (cópia local como árvore de trabalho), pelo limite de memória.
