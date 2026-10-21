---
tipo: decisao
data: 2026-10-20
status: valendo
fonte: conversa de 20/10
---
# O código de vendedora da Farm na mensagem: 10% e frete grátis

**Decisão:** na Farm, o código de vendedora dá 10% off e frete grátis acima de R$ 399 em toda peça a preço cheio e sem promoção (normal ou lançamento); com qualquer promoção ou com preço riscado da loja, só o frete grátis ("todas as peças que não estão em promoção"). A mensagem da peça a preço cheio sai com o preço cheio riscado e o preço com os 10%. O sistema escreve sozinho a linha do frete, pela mesma regra ("+10% OFF e frete grátis acima de R$ 399 com o meu código" ou "frete grátis acima de R$ 399 com o meu código"), depois da linha do código; cada vendedora pode apagar ou mudar. Só com o código da Farm cadastrado; a Dress To não muda.

**Por quê:** pedido dela; no estudo dos grupos, a frase do frete acima de R$ 399 com o código é linha fixa das vendedoras ([[2026-10-20-ofertas-dos-grupos-de-vendedoras]]).

**Onde entrou:** `ferramenta-grupos`, os 10% em `4bf5a4a` e a linha do frete em `51cda52`, na produção desde 20/10 à noite; a linha foi posta uma vez nas mensagens gravadas sem frete (`message:frete --aplicar`: 15 linhas de 3 contas).

**Alternativas descartadas:** os 10% só no lançamento (a primeira versão do pedido, ampliada por ela).
