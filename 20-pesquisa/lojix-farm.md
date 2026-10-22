---
tipo: pesquisa
data: 2026-10-21
conferido: 2026-10-21
---
# Lojix, a live mensal da Farm

## O que importa

- A Lojix é uma live interativa que a Farm faz todo mês; a de 21/10 começa às 19h. O site da live é `lojix.farmrio.com.br` (não `lojix.com.br`: o domínio está registrado, mas sem endereço em 21/10). A página `farmrio.com.br/lojix` é só a vitrine com o banner; a versão dela que está no ar vale até 21/10 às 19h, e o banner leva para `lojix.farmrio.com.br/aovivo`.
- O app da live é o "Soma Live" (do grupo da Farm), com uma API pública sem login. `GET <backend>/stream/aovivo` devolve a live (id 24, `is_live`, canal de venda **6**) e as peças em 13 botões: lançamento (103), preview (92), tá tudo aqui (1.100), praia, vestido e macacão, lisos, partes de cima e de baixo, farm etc, presente, infantil, bolsas; são 1.383 referências. `GET <backend>/embed/stream/aovivo` (5 KB) dá só o `is_live`. `GET <backend>/stream/24/products/timeline` é a peça que aparece em cada momento da live (`keyframes`); o app relê a cada 5 s. Em 21/10, às 12h30, a timeline estava vazia e desligada, então o formato dela ainda não foi visto. O endereço do backend está em `.maestri/lojix-2026-10-21/gravar.mjs`.
- **O preview é vendido em outro canal.** As 92 peças do botão preview são da coleção "As Cariocas" (alto verão 27). Às 12h50 de 21/10, 50 delas só existiam no canal 6: a busca do site (canal 1, o padrão) não as acha, e a página da peça só mostra o preço com `?sc=6` (ex.: a linha Verão Colorido, Crinkle, Boho Coqueiro, os biquínis e maiôs, os bordados). As outras 42 já estão no site. O conector de catálogo do painel não passa canal de venda, então as 50 nunca chegam ao painel. A lista está em `.maestri/lojix-2026-10-21/preview-1250.json`. Ela confirmou em 21/10 que as 50 são as peças da Lojix daquele dia. 46 delas estão na coleção `1217 preview` do VTEX, que tem 47 peças no canal 6 e nenhuma no canal 1; as 50 estão também na `1453 lojix-app`, que mistura peças do site.
- **O código da vendedora entra pela URL da live:** o app lê `?codigovendedora=`, `?cod=` ou `?utm_campaign=` e manda para o carrinho com `sc=6&utm_medium=linkvendedor&utm_source=vendedora&utm_campaign=<código>`. Para compartilhar uma peça, o app usa `?product=<productId>`. Lido no código do app, sem teste numa compra de verdade.
- No CMS da Farm há as coleções `1453 lojix-app` (1.079 peças) e `1610 validos-lojix` (370), parecidas com a `validos-reloginho`; a vitrine da `/lojix` usa a 689 (`novidades-app`, 1.454 peças).
- Não confirmado: se as peças do preview passam para o site (canal 1) quando a live começa, se a live tem desconto próprio ("looks FARM com desconto durante a lojix", no banner), e qual é o parâmetro do link da Farm no painel em produção (o banco não foi lido).
- A live de 21/10 está sendo gravada das 12h30 às 23h30, só por leitura e a cada minuto, por `.maestri/lojix-2026-10-21/gravar.mjs` (pasta fora do git): `log.txt`, a timeline quando muda, o stream quando as peças mudam e, a cada 30 min, quantas peças do preview estão no site.

## Fontes

- `farmrio.com.br/lojix` e a agenda do CMS (`/.decofile`, bloco `pages-lojix-858310`), lidas em 21/10.
- `lojix.farmrio.com.br` e o script do app (`/assets/index-B-_x7wwZ.js`), lidos em 21/10.
- A API do app e a busca do VTEX da Farm (`/api/catalog_system/pub/products/search`, com `sc=1` e `sc=6`), chamadas em 21/10.
