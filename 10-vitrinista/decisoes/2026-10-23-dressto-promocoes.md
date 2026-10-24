---
tipo: decisao
data: 2026-10-23
status: valendo
fonte: conversa de 23/10 ("sobre todas as alterações que fizemos com relação à farm e identificação de promoções… quero que seja feito a mesma coisa com a dress to"); respostas dela à Trama, registradas na spec (`13f7651`)
---
# Dress To com a identificação de promoções da Farm, em fatias

**Decisão:** a Dress To ganha o que a Farm tem para identificar promoções, no que se aplica a ela, em 7 fatias pequenas que sobem sozinhas. Respostas dela às perguntas da spec:
1. **"Leve N" (a flash sale de `/essencia`, "na compra de 2 peças, 30% OFF"):** a mensagem leva a linha "🛍️ Levando 2 peças: 30% OFF (esta sai por R$ 321,30)", com o preço do carrinho; no conjunto, "🛍️ Levando as 2: 30% OFF em cada"; o conjunto tem preferência nessas promoções.
2. **O código de afiliada na Dress To dá só frete grátis acima de R$ 400**, sem desconto na peça. A mensagem da Dress To leva a linha do frete em toda peça.
3. **Vitrine da Dress To:** a página do item "Lançamento" do menu, relida a cada verificação (em 23/10, `/entretempos`), e não `/nossas-novidades` (as 150 peças com a mesma data).
4. **Cronômetro da Dress To a cada 5 min,** com uma leitura só da home.
5. **A "leve N" na fila como aviso** (4 de cada 5 lugares soltos).

Já iguais à Farm em 23/10: cronômetro (15 min), avisos do carrossel, cupom por peça no carrinho, promoção à mão. Não se aplicam: agenda do CMS, Bazar pelo menu (permanente na Dress To), faixa de cupons, Lojix.

**Por quê:** pedido dela. Achado da Trama: a flash sale tem as peças a preço cheio e o desconto só no carrinho com 2 peças; o envio pularia toda peça dela. Na produção, nenhuma fila tinha peça da Dress To desde 22/10 (conferido pelo Curador).

**Onde entrou:** `ferramenta-grupos`, spec `docs/superpowers/specs/2026-10-23-dressto-promocoes-design.md` (`346f2b9`, `13f7651`) e plano da fatia 1 `docs/superpowers/plans/2026-10-23-dressto-leve-n.md`, branch `claude/dressto-promocoes` (Trama). Ainda não está no ar.

**Alternativas descartadas:** simular o código de vendedora no carrinho da Dress To (o código não dá desconto na peça); a Vitrine por `/nossas-novidades`.
