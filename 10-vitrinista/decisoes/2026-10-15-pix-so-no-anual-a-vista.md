---
tipo: decisao
data: 2026-10-15
status: valendo
fonte: conversa com o Curador, 15/10/2026
---
# Pix só no anual à vista

**Decisão:** o Pix fica só no anual à vista (Maison R$ 588, Atelier R$ 1.188), pago numa página de pagamento avulsa da Stripe, na compra e na renovação de cada ano. O mensal e o 12x são só no cartão. A ideia foi dela ("o que acha de deixar o pix só para o anual?"); ela confirmou com "sim" depois da recomendação do Curador.

**Por quê:** conta da Stripe no Brasil só aceita Pix avulso. Testado pela API no modo de teste, em 15/10: o pagamento avulso e o checkout avulso oferecem Pix, mas a fatura de assinatura recusa ("The payment method type `pix` is not available for this account"). A documentação da Stripe (docs.stripe.com/payments/pix) diz que o Pix Automático não existe para empresa domiciliada no Brasil. O anual à vista é um pagamento por ano e combina com o Pix avulso; no mensal, a cliente teria que pagar à mão todo mês, com atraso e bloqueio por esquecimento. Também empurra quem prefere Pix para o anual.

**Risco aceito:** perder quem não tem cartão (ou não quer cadastrar) e não quer pagar o ano de uma vez. Não há dado para medir o tamanho desse grupo. Proposta: medir quem desiste em `/assinar` no mensal; se aparecer demanda, ligar o plano B da spec (checkout avulso com Pix para cada fatura do mensal).

**Não confirmado:** se a conta de produção, depois de ativada, aceita Pix na fatura de assinatura. Pela documentação, não.

**Onde entrou:** ainda não entrou. Vai para o Tear depois do 12C, na branch `claude/stripe-billing-i0eof8`: hoje o código tenta o Pix no mensal por fatura (`send_invoice`), o que não funciona.

**Alternativas descartadas:** Pix no mensal pelo plano B (checkout avulso por fatura); lançar só com cartão.
