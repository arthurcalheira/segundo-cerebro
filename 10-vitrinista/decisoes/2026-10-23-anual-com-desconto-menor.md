---
tipo: decisao
data: 2026-10-23
status: valendo
fonte: conversa de 23/10 ("quero diminuir o desconto dos anuais"; a escolha entre três opções; "busque um jeito de fazer essas mudanças o mais rapido possivel"; "pode fazer o deploy da trama quando terminar")
---
# Anual com desconto menor: R$ 149, R$ 209 e R$ 329 por mês

**Decisão:**

| Plano | Mensal | Anual por mês (e 12x) | Anual por ano | Desconto do anual |
|---|---|---|---|---|
| Essencial | R$ 179,90 | R$ 149 | R$ 1.788 | 17% |
| Maison | R$ 279,90 | R$ 209 | R$ 2.508 | 25% |
| Atelier | R$ 399,90 | R$ 329 | R$ 3.948 | 17% |

Mensais iguais aos de [[2026-10-21-precos-tabela-3]]. O Maison segue com o maior desconto, para puxar a escolha para ele (recomendação do Curador, escolhida por ela). Quem já assina continua no preço da tabela dela.

**Por quê:** pedido dela, urgente. Alternativas oferecidas: 145/199/309 (19%, 28%, 22%) e 159/229/349 (11%, 18%, 12%).

**Como foi feito (o caminho rápido):** em 23/10 nenhuma assinatura da produção estava na tabela 3 (4 na tabela 1, 3 na 2), então os valores da própria tabela 3 mudaram, sem tabela 4 nem migração. Na Stripe, os 6 preços do anual e do 12x foram substituídos com as mesmas chaves `_v3`; os antigos ficaram arquivados. O `billing:precos --criar` ganhou essa substituição. A cobrança ficou desligada cerca de 1 minuto (17h51 às 17h52 UTC). Termos e Termo de compromisso na versão de 23/10.

**Onde entrou:** `ferramenta-grupos`, Trama na `claude/anual-menor` (`078337d`, `3d4a57b`, `6866e25`, `9494886`), junto com a FARM Etc em `claude/integracao-2310b` (`78548c3`). Ensaio na cópia de teste (Stripe de teste, 27 `ok`), depois `master` e produção em `78548c3`, em 23/10.

**A revisar:** é a terceira mudança de preço em quatro dias; os Termos prometem 30 dias de aviso antes de preço novo (com o advogado, [[pendencias]]). Sem dado de conversão: julgamento, para rever com as vendas.
