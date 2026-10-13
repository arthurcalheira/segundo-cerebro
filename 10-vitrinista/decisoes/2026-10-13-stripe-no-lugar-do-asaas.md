---
tipo: decisao
data: 2026-10-13
status: valendo
fonte: conversa com o Curador, 13/10/2026
---
# Stripe no lugar do Asaas

**Decisão:** a cobrança da Vitrinista passa a ser pela Stripe, e não pelo Asaas. Fecha o que estava em aberto no `STATE.md` do vault ("decidir por onde cobrar: Stripe ou Asaas no CPF").

**Por quê:** no Asaas com o CPF dela, o nome dela aparece nos e-mails, na fatura e no Pix, e abrir empresa não é viável agora. Na Stripe, pessoa física abre conta e, no teste de 13/10, recibo e fatura mostraram só o nome público da conta. Pesquisa e teste em [[asaas-nome-nas-cobrancas]]; liga-se a [[2026-10-11-criadora-sem-ligacao-publica]]. O motivo não foi repetido na conversa da decisão: é o da pesquisa do mesmo dia.

**O que vem junto** (da mesma pesquisa): assinatura automática só no cartão (o Pix da Stripe é avulso e por convite, e não está disponível na conta de teste dela); cartão liberado em 30 dias; taxa maior (R$ 5,08 por mensalidade do Maison, contra R$ 3,48 no Asaas). Não pesquisado: parcelamento em 12x no cartão, que pesa no plano anual.

**Onde entrou:** ainda não entrou. O projeto cobra pelo Asaas: `ferramenta-grupos/packages/core/src/billing/asaas-gateway.ts`, atrás da interface `BillingGateway` (`gateway.ts`), com cartão recorrente e Pix. A troca pede um plano de código (gateway novo, webhook, checkout, trocas de plano, atraso, estorno, avisos) e a revisão de `docs/legal/termos.md`.

**Alternativas descartadas:** Asaas no CPF (mostra o nome dela); abrir empresa (não viável agora); Hotmart, Eduzz e Kiwify (taxas maiores, não conferidas); cartão na Stripe com Pix no Asaas (o Pix mostraria o nome dela, e seriam dois sistemas).
