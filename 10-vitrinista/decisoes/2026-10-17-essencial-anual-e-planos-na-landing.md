---
tipo: decisao
data: 2026-10-17
status: valendo
fonte: conversa com o Curador, 17/10/2026
---
# Essencial anual a R$ 30 por mês, e a landing abre no anual com o desconto

**Decisão:**
- O Essencial ganha plano anual: R$ 360 por ano (R$ 30 por mês), à vista (cartão ou Pix) ou em 12x de R$ 30 no cartão, com o mesmo compromisso do 12x dos outros planos. O mensal continua R$ 59,90.
- A página de vendas abre com os preços anuais; o mensal fica a um clique.
- O desconto do anual aparece no rótulo ("até 50% de desconto") e em cada cartão, sobre o mensal: Essencial 49%, Maison 50%, Atelier 44%. O número é arredondado para baixo, para nunca prometer mais do que é (49,9% vira 49%).
- Embaixo do nome de cada plano, a fase de quem o escolhe: "Para quem está começando." (Essencial), "Para quem já vende e quer crescer." (Maison), "Para quem vive do grupo e usa mais de um número." (Atelier). A primeira frase foi dada na conversa; as outras duas são do Curador, aprovadas na mesma conversa ("estão boas as frases").

**Por quê:** pedido na conversa, antes de abrir o cadastro.

**Atenção:** a decisão de [[2026-10-13-plano-anual-maison-49-atelier-99]] contava com o Maison anual abaixo do Essencial mensal para levar assinantes ao Maison. Com o Essencial anual a R$ 30, o plano mais barato à vista passa a ser o Essencial anual.

**Onde entrou:** `ferramenta-grupos`, no `master` e no servidor desde 17/10 (`bfd2818`; `/assinar` abrindo no anual em `8a606cf`): `packages/core/src/billing/plans.ts`, `apps/web/src/app/vendas/page.tsx`, Termos e Termo de compromisso do 12x (versão de 17/10), `docs/implantacao.md` (nove preços). Os preços `essencial_anual` e `essencial_12x` existem na Stripe de teste e na de produção desde 17/10.

**Alternativas descartadas:** nenhuma discutida.
