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

**Alternativas descartadas:** desenvolver no notebook (cópia local como árvore de trabalho), pelo limite de memória.
