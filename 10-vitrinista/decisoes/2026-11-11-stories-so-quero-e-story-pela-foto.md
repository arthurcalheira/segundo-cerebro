---
tipo: decisao
data: 2026-11-11
status: valendo
fonte: conversa de 11/11 (cobrança do QUERO, pedido do link, escolha da Headline, ok do Story pela foto)
---
# Stories só com "QUERO", link com utm_campaign, Headline e Story pela foto

**Decisão:**
1. Nos Stories, a cliente responde só "QUERO". Não existe palavra por peça (VESTIDO, SAIA2…): nem no story, nem nas telas, nem como opção. Não oferecer de novo a alternativa.
2. Link da Farm, da FARM Etc e da Fábula com `?utm_campaign=<código>` (era `utm_source=<código>&utm_medium=whatsapp`). As outras lojas ficam como estão.
3. Fonte Headline dos stories: Noto Serif Display, largura 66, peso 550 (licença livre). Copiar a fonte do Instagram foi descartado: ela não foi identificada e é proprietária.
4. Story pela foto construído e no ar: escolher o tipo da peça antes da busca; "Nada serviu" volta para a busca de sempre. O ok dela para subir valeu para a Headline e para o Story pela foto, cada um depois do QA e da cópia de teste.

**Por quê:** a palavra por peça confundia a cliente e a criadora; o `utm_campaign` é a extensão que a Farm usa; a Bodoni antiga ficava apagada.

**Onde entrou:** `a4b5e88f` (QUERO), `c275b9c4` (link), `f0cd79f3` (Headline), `7d487aca` (Story pela foto, migração `0089`), no `master` e na produção.

**Alternativas descartadas:** palavra por peça como opção; copiar a fonte do Instagram.
