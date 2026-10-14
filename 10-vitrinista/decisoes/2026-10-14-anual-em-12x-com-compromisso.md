---
tipo: decisao
data: 2026-10-14
status: valendo
fonte: conversa com o Curador, 14/10/2026
---
# Anual à vista ou em 12x com compromisso de 12 meses

**Decisão:** no plano anual, antes de abrir o checkout, a assinante escolhe entre pagar à vista (Maison R$ 588, Atelier R$ 1.188) ou em 12 cobranças mensais (Maison R$ 49, Atelier R$ 99) com compromisso de 12 meses. No 12x ela aceita um termo: o cancelamento pelo site fica fechado, e só sai pelo suporte, como já combinado em [[2026-10-13-cancelamento-e-reembolso]]. A ideia foi dela, com 1x a 12x e um produto por parcela. Ela escolheu a opção (a) do Curador ("a"), só à vista ou 12x. O Atelier em 12x de R$ 99 ela confirmou depois ("sim, atelier de 99 12x").

**Por quê:** evitar a cobrança de uma vez só no anual. A Stripe não tem parcelamento de cartão para conta do Brasil ([[asaas-nome-nas-cobrancas]], 13/10). Com só duas opções o preço fica um só e o código fica simples. De 2x a 11x, o período pago deixa de bater com a cobrança.

**O que muda em relação ao parcelado de verdade:** cada parcela é uma cobrança nova no cartão. Se o cartão falhar ou a cliente contestar no meio do ano, o prejuízo é da Vitrinista, porque o contrato não faz o cartão pagar. O 12x não ocupa o limite do cartão.

**Multa (decidida em 14/10, "b, 20% das parcelas restantes"):** quem sai antes dos 12 meses paga 20% das parcelas que faltam. Por exemplo, no Maison, ao sair depois da 4ª parcela: 20% de 8 × R$ 49, ou R$ 78,40. O Curador tinha recomendado ficar sem multa até o advogado responder. A multa segue para o advogado.

**Parcela que falha (decidido em 14/10, "isso, só no 12x"):** a ideia de pausar foi dela; o prazo e a contagem foram propostos pelo Curador. Na primeira falha, a assinatura em 12x fica pausada e a assinante perde o acesso na hora. Ao trocar o cartão, ela volta de onde parou. Se continuar pausada por 30 dias, a assinatura é cancelada sem multa. O compromisso conta 12 parcelas pagas, não 12 meses de calendário, então a pausa só empurra o fim. Essa pausa é separada da pausa voluntária de 60 dias do 12B e não gasta a vez dela. Vale só para o 12x: no mensal, continua a regra do 12A (vencida e cancelada depois de 15 dias de atraso). A desistência nos 7 dias continua (Código de Defesa do Consumidor, art. 49).

**Não confirmado:** se fechar o cancelamento pelo site e cobrar multa num compromisso de 12 meses se sustenta no Código de Defesa do Consumidor. Vai ao advogado ([[pendencias]]).

**Onde entrou:** ainda não entrou. Fica para um Plano 12C, depois de o Tear terminar o 12B e antes do merge e do deploy do Plano 12. Entra em `/assinar`, na cobrança (`ferramenta-grupos/packages/core/src/billing/`), na página de vendas e nos Termos.

**Alternativas descartadas:** de 1x a 12x, com um produto por número de parcelas (a sugestão dela); só à vista, como estava em [[2026-10-13-plano-anual-maison-49-atelier-99]].
