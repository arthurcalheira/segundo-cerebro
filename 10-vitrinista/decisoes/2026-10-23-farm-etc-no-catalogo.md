---
tipo: decisao
data: 2026-10-23
status: valendo
fonte: conversa de 23/10 ("quero implementar no painel o catalogo da Farm ETC"; a escolha entre três leituras; "confirmo as escolhas, pode fazer o deploy")
---
# FARM Etc no Catálogo: um interruptor dentro da Farm

**Decisão:** a FARM Etc aparece no painel como um interruptor "FARM Etc" (o nome como o site da Farm escreve) ao lado do Lojix, no Catálogo e no Trocar. Ligado, mostra só as peças da Farm com a categoria em `/FarmEtc/`. Continua sendo a Farm: mesmo código de afiliada, mesmo link, não conta no limite de lojas do plano; robô, seções e mensagem não mudam. Escolhas da Trama, confirmadas por ela:
- interruptor e não subaba (as abas de loja só aparecem com 2 lojas ou mais, e o Trocar não tinha faixa);
- Lojix e FARM Etc ligados juntos se somam (as peças da FARM Etc que estão na live; pode dar zero); a aba de outra loja e "Limpar filtros" desligam;
- as sugestões do robô no Trocar não seguem o interruptor, como não seguem os outros filtros.

**Por quê:** a FARM Etc já entrava no sync da Farm (raiz 479), com 739 peças disponíveis na produção em 23/10, misturadas na aba FARM Rio, sem um jeito de ver só elas.

**Onde entrou:** `ferramenta-grupos`, Trama na `claude/farm-etc` (`4c3f8f3`, `e96c2f7`, `9289e3d`; guia `web.md`, Novidades e `STATE.md` de lá). Na cópia de teste e depois no `master` e na produção em `9289e3d`, em 23/10, 11h14.

**Alternativas descartadas:**
- A FARM Etc como loja própria: contaria no limite de lojas e mudaria mais código, como a Lojix como loja separada, descartada em 21/10 ([[2026-10-21-lojix-no-catalogo]]).
- Arrumar as categorias das 260 peças em "outro": fica para depois; muitas vêm do site só com `/FarmEtc/`, sem subcategoria.
