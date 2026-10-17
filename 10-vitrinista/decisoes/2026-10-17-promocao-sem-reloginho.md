---
tipo: decisao
data: 2026-10-17
status: valendo
fonte: conversa com o Curador, 17/10/2026; spec do Tear
---
# Promoção do site sem reloginho entra no Catálogo e na Fila

**Decisão:** o robô passa a reconhecer a promoção que a loja anuncia sem contagem regressiva (a faixa de aviso do topo e os banners da página inicial, com desconto ou cupom), como a LIQUI30 e o Bazar 60% OFF da Farm em 17/10. Aprovada a spec do Tear, com estas respostas:
- Acaba quando o aviso some da página inicial em duas leituras seguidas.
- **Fica com 80% das posições soltas da fila** (a spec propunha metade; ela pediu 80%). O reloginho continua com prioridade total.
- O Bazar conta como promoção só quando o site o anuncia, com as peças da página `/bazar` (528 em 17/10), não a categoria "bazar farm" inteira (1.245).
- A "coleção de verão" do LIQUI30 é a página `/produtos/promo` (696 peças em 17/10).

**Por quê:** ela viu as duas promoções no site e nenhuma no painel. O robô só lia o reloginho; o cupom desconta no carrinho, sem mudar o preço do catálogo; e, em "Todas as peças", o Bazar entrou em 2 das 43 peças da fila de 17/10.

**Onde entrou:** spec `ferramenta-grupos/docs/superpowers/specs/2026-10-17-promo-sem-reloginho-design.md`, branch local `claude/promo-sem-reloginho` (Tear), em execução em 17/10.

**Alternativas descartadas:** metade das posições soltas (proposta da spec); o Bazar sempre, pela categoria inteira.
