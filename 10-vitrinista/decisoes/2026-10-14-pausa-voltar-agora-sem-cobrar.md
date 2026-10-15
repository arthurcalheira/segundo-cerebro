---
tipo: decisao
data: 2026-10-14
status: valendo
fonte: conversa dela com o Construtor local (Tear), 14/10/2026, lida no `ferramenta-grupos/STATE.md` da branch `claude/stripe-billing-i0eof8`; o Curador não viu a conversa
---
# Pausa: "Voltar agora" sem cobrar hoje, e o desfazer conta como oferta aceita

**Decisão:** durante a pausa de 60 dias, "Voltar agora" só tira a pausa, sem cobrar hoje: a cobrança volta no ciclo de sempre. Antes, o 12B cobrava na hora. Pausar e depois desfazer continua contando como "oferta aceita" em "Por que cancelam", na Administração; rever só se o número confundir.

**Por quê:** não dito no `STATE.md` do projeto.

**Onde entrou:** `af1c84e` (Voltar agora), conferido pelo Tear com relógio de teste da Stripe (a fatura de 14/11 anulada, a de 14/12 cobrada). A contagem está em "Decidido por ela (14/10)" no `ferramenta-grupos/STATE.md` da branch. Sem merge.

**Alternativas descartadas:** "Voltar agora" cobrando hoje (`billing_cycle_anchor: now`), como estava no 12B.
