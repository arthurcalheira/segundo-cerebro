---
tipo: decisao
data: 2026-10-12
status: valendo
fonte: conversa de 12/10 com o Claude Code no notebook (pedidos "sugestões aceitas" e "pode fazer o tema escuro")
---
# Painel na identidade A, claro e escuro

**Decisão:** o painel adota a identidade A (desenho botânico) em todas as telas, nos temas claro e escuro. O escuro segue o sistema do aparelho, sem botão para alternar. Os ladrilhos de cada área são neutros, e só a área aberta fica em tinta. Os botões mantêm a regra "o mesmo verbo tem sempre a mesma cor": enviar e ligar em verde mata, salvar em tinta, pausar em açafrão, apagar em vermelho.

**Por quê:** ela abriu a sessão para fazer "as alterações visuais necessárias no painel" depois da identidade e da página de vendas. O manual da marca diz que o painel é calmo, com cor só no estado e na ação, e o escuro já tinha valores desenhados e conferidos. Ela aceitou as três sugestões (ladrilhos neutros, revisar as telas antes do escuro, branch própria) e pediu o tema escuro.

**Onde entrou:** `ferramenta-grupos`, no `master` (commits `f9f8e15` e `96e4bd6`; branch `painel-identidade-botanica`), e no servidor em 12/10. Regras do painel em `ferramenta-grupos/AGENTS.md`, `ferramenta-grupos/.claude/guides/web.md` e `ferramenta-grupos/STATE.md`. O teste de contraste roda os mesmos pares nos dois temas (93 testes, fórmula WCAG).

**Alternativas descartadas:** manter os quatro ladrilhos coloridos; botão claro/escuro no painel (oferecido, ela não pediu). Não confirmado: o escuro foi visto só no Edge do notebook, não em aparelho real.
