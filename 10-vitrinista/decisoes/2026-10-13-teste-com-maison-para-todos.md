---
tipo: decisao
data: 2026-10-13
status: valendo
fonte: conversa com o Curador, 13/10/2026 ("pode fazer os testes assim então")
---
# Teste grátis com os recursos do Maison para todos

**Decisão:** nos 7 dias de teste, toda conta usa os limites do Maison, qualquer que seja o plano marcado ao assinar (quem marcou o Atelier testa o Atelier).

- Ao assinar: ela escolhe o plano e põe o cartão, como hoje; nada é cobrado no dia.
- Durante o teste: quem marcou o Essencial vê no painel um aviso fixo do que vai perder, dito com o que ela de fato usou (grupos, lojas, recursos), e o botão para ficar no Maison.
- Dia 7: o cartão é cobrado pelo plano marcado naquele dia. No anual, o valor do ano sai de uma vez, e a tela diz o valor e a data antes.
- Quem fica no Essencial: os limites caem na hora; grupos e lojas a mais ficam parados e nada é apagado (a descida de plano já funciona assim).
- Continua: um teste por conta, por CPF e por número, só no cartão.

**Por quê:** levar o máximo de assinantes ao Maison. O Essencial existe para empurrar para o Maison, não para ser acessível (dito por ela no mesmo dia); quem nunca usou edição de mensagem, IA e foto própria não sente falta, e quem usou por 7 dias sente.

**Onde entrou:** ainda não entrou. Hoje o teste vale no plano escolhido (`TRIAL_DAYS` em `ferramenta-grupos/packages/core/src/billing/subscription.ts`; os limites vêm de `effectivePlan`, em `billing/status.ts`). Entra no plano de código da troca de cobrança ([[2026-10-13-stripe-no-lugar-do-asaas]]), com o anual ([[2026-10-13-plano-anual-maison-49-atelier-99]]).

**Alternativas descartadas:** teste no plano escolhido (como está hoje).
