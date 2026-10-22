---
tipo: decisao
data: 2026-10-21
status: valendo
fonte: conversa de 21/10 ("quero aumentar eles e diminuir um pouco os descontos dos planos anuais"; "vai com a sugestão")
---
# Preços da tabela 3: mensal mais alto e anual com desconto menor, o maior no Maison

**Decisão:**

| Plano | Mensal | Anual por mês | Anual por ano | Desconto do anual |
|---|---|---|---|---|
| Essencial | R$ 179,90 | R$ 139 | R$ 1.668 | 22% |
| Maison | R$ 279,90 | R$ 189 | R$ 2.268 | 32% |
| Atelier | R$ 399,90 | R$ 289 | R$ 3.468 | 27% |

Os percentuais são os que a tela mostra: o código arredonda para baixo (22,7% e 27,7%). Quem já assina continua na tabela dele (1 ou 2), com a regra de [[2026-10-20-precos-novos]]: o próprio plano e a periodicidade ficam no preço antigo, e a troca de plano vai ao preço de agora. A recomendação do Curador ficou valendo sem ela dizer o contrário.

**Por quê:** pedido dela, de subir os preços e reduzir os descontos do anual. Na tabela 2 o anual saía com 47%, 53% e 57% de desconto, o maior no Atelier. Na sugestão do Curador, aceita por ela, o Maison anual (R$ 189/mês) fica a R$ 9 do Essencial mensal (R$ 179,90), para o Essencial servir de isca para o Maison ([[vitrinista-objetivo-planos]], na memória do Curador). Não há dado de conversão: é julgamento, para rever com as vendas.

**Onde entrou:** `ferramenta-grupos`, branch `claude/precos-v3`, feita por um subagente do Curador. `plans.ts` tem a tabela 3 como atual e a 2 com os valores literais de 20/10; a migração 0053 só troca o padrão de `price_table` para 3; Termos e Termo de compromisso estão na versão de 21/10. O `master` e a produção estão em `5845b50` desde 21/10, 17h13. Os 9 preços `_v3` foram criados na Stripe de produção, e o `billing:precos` lista 27 `ok`. A cobrança ficou desligada menos de 1 minuto (das 17h12 às 17h13). Nenhuma assinatura mudou de tabela: 4 seguem na 1 e 3 na 2.

**Alternativas descartadas:** a versão mais leve (R$ 169,90, R$ 269,90 e R$ 379,90 por mês; anual R$ 129, R$ 179 e R$ 269 por mês).

**A revisar:** os Termos prometem 30 dias de aviso antes de preço novo (já com o advogado, [[pendencias]]). Foi a segunda subida em dois dias.
