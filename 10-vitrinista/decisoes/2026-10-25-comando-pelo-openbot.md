---
tipo: decisao
data: 2026-10-25
status: valendo
fonte: conversa com o Gerente no OpenBot, 25/10/2026, de manhã
---
# Projeto comandado pelo Gerente, no OpenBot

**Decisão:** o comando da Vitrinista sai do Maestri e vai para o OpenBot. O agente "Gerente" assume o papel do Curador ("1. sim, sendo chamado agora de gerente"), e as instruções e os scripts do vault passam a funcionar no OpenBot ("adapte todas as instruções e codigos para funcionarem para o openbot").

- Papéis em `openbot/papeis/` (`gerente.md` no lugar de `curador.md`); construtores locais viram agentes do OpenBot em worktree própria e falam com o Gerente por mensagem do OpenBot, não por `maestri ask`.
- Rotinas do OpenBot no Gerente (Abertura, Vigia da nuvem, Conferente do site, Fechamento), com os mesmos scripts, agora em `openbot/scripts/` e com o estado em `.openbot/` (fora do git).
- Navegador do OpenBot no lugar do portal do Maestri; `computer_use` para janela do Windows.
- O resto de [[2026-10-10-comando-pelo-maestri]] continua: código feito por construtores e pela nuvem, um construtor pesado por vez, merge e deploy só com o ok dela.

**Por quê:** pedido dela na conversa; o Gerente do OpenBot passa a ser o assistente que orquestra os outros agentes.

**Onde entrou:** no vault, `AGENTS.md`, `STATE.md`, `openbot/` (papéis, `plano-workspace.md`, scripts, `configurar-no-windows.md`), as skills `despachar-nuvem` e `fechar-sessao`, `templates/diario.md` e `.gitignore`. No projeto, ainda não entrou: o `STATE.md` de lá cita o Maestri só como histórico. Com o Maestri desligado (confirmado por ela em 25/10), `maestri/` foi para `90-arquivo/maestri/`.

**Alternativas descartadas:** seguir no Maestri com o Gerente de apoio de fora; manter os dois rodando rotinas juntos (dobraria os avisos e o gasto).
