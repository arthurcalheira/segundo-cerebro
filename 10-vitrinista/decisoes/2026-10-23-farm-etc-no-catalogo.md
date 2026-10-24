---
tipo: decisao
data: 2026-10-23
status: valendo
fonte: conversa de 23/10 ("quero implementar no painel o catalogo da Farm ETC"; "eu quis dizer que a farm etc tinha que ser um botão que nem os das categorias vestido e etc"; "pode fazer o deploy")
---
# FARM Etc no Catálogo: um chip na fileira das categorias

**Decisão:** a FARM Etc é um chip "FARM Etc" (o nome como o site da Farm escreve) no fim da fileira das categorias, depois de Calçados, no Catálogo e no Trocar, com a contagem de peças como os outros. Mostra só as peças da Farm com a categoria em `/FarmEtc/`. Continua sendo a Farm: mesmo código de afiliada, mesmo link, não conta no limite de lojas do plano; robô, seções e mensagem não mudam.
- Um chip por vez, como as categorias (tocar em Vestido desmarca a FARM Etc). Loja, promoção, busca, preço e Lojix continuam somando.
- As peças da FARM Etc continuam também nas categorias delas (uma bolsa segue em Acessório).
- O chip aparece na aba Todas e na FARM Rio; some na Dress To.
- "Limpar filtros" mantém a FARM Etc marcada, como mantém a categoria (confirmado por ela).
- As sugestões do robô no Trocar não seguem o chip, como não seguem os outros filtros.

**Por quê:** a FARM Etc já entrava no sync da Farm (raiz 479), com 739 peças disponíveis na produção em 23/10, misturadas na aba FARM Rio, sem um jeito de ver só elas.

**Onde entrou:** `ferramenta-grupos`. Primeiro como interruptor ao lado do Lojix (`claude/farm-etc`, `9289e3d`, no ar às 11h14). Depois, pelo pedido dela, como chip das categorias (`claude/farm-etc-categoria`, `4b32624`; guia `web.md`, Novidades e `STATE.md` de lá), no ar junto com o anual menor em `78548c3` ([[2026-10-23-anual-com-desconto-menor]]).

**Alternativas descartadas:**
- O interruptor ao lado do Lojix (no ar de 11h14 até o deploy de `78548c3`).
- Um botão na fileira das promoções (`claude/farm-etc-botao`): o Curador entendeu errado o pedido; não subiu.
- A FARM Etc como loja própria: contaria no limite de lojas e mudaria mais código, como a Lojix como loja separada, descartada em 21/10 ([[2026-10-21-lojix-no-catalogo]]).
- Arrumar as categorias das 260 peças em "outro": fica para depois; muitas vêm do site só com `/FarmEtc/`, sem subcategoria.
