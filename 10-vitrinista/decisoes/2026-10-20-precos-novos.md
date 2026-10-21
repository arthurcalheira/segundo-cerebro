---
tipo: decisao
data: 2026-10-20
status: valendo
fonte: conversa de 20/10
---
# Preços novos, com o preço de quem já assina mantido no mesmo plano

**Decisão:** Essencial R$ 149,90, Maison R$ 249,90 e Atelier R$ 349,90 por mês; anual R$ 79, R$ 117 e R$ 150 por mês (R$ 948, R$ 1.404 e R$ 1.800 por ano, ou 12x). Quem já assinava fica no preço antigo enquanto continuar no mesmo plano e periodicidade (a cobrança, a renovação, a multa e a 13ª parcela do 12x); trocar de plano ou de periodicidade vai ao preço novo (decisão dela: "ela só não vai ter o reajuste de preço no próprio plano dela"). Cancelar e assinar de novo, preço novo.

**Por quê:** pedido dela. Em 20/10 havia 4 assinaturas, todas do Essencial no teste grátis.

**Onde entrou:** `ferramenta-grupos`, spec `docs/superpowers/specs/2026-10-20-precos-novos-design.md`; tabelas de preço 1 (chaves sem sufixo na Stripe) e 2 (chaves `_v2`), `subscriptions.price_table` (migração 0049), merge `b7e9044`, na produção desde 20/10 à noite, com os 9 preços `_v2` criados na Stripe de produção (`billing:precos --criar`). Termos e Termo de compromisso com os valores novos.

**Alternativas descartadas:** a troca de plano de quem já assinava também no preço antigo (a leitura inicial do Curador, trocada por ela).

**A revisar:** os Termos prometem 30 dias de aviso antes de um preço novo, e a troca de plano vai ao preço novo na hora: levar ao advogado ([[pendencias]]).
