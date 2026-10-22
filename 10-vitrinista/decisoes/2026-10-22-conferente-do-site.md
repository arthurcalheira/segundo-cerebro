---
tipo: decisao
data: 2026-10-22
status: valendo
fonte: conversa com ela, 22/10, à tarde
---
# Conferente do site e botões que copiam o site

**Decisão:**
- Os botões do Catálogo copiam o site: toda página que a home da marca aponta (banner ou menu) com peças em desconto vira botão, e some quando sai do site; a Vitrine da Semana da Farm é a coleção `ta-na-vitrine` inteira (a página `/ta-na-vitrine`), sem a janela de 7 dias. "Lançamentos" passa a "Vitrine da Semana", e todo botão diz a marca.
- Um conferente no worker compara o site com o painel a cada hora (promoção sem botão, botão órfão, contagem diferente) e registra as divergências. O Curador lê por uma rotina do notebook, manda o conserto ao construtor sem esperar ela pedir e pede o ok dela só para subir ao ar.
- Todo conserto de sincronização deixa uma fixture com a página real do dia e um teste.

**Por quê:** ela teve de avisar várias vezes que algo do site não aparecia no painel (em 22/10: bazar só no menu, banner das t-shirts a R$ 98 sem texto, vitrine com 11 de 31 peças). Ela quer que isso pare de depender dela.

**Onde entrou:** produção em 22/10. Botões: `fb9b90e` a `0380224`; leitura que não cai inteira: `9effa77`, `57a85f8`, `2d8e789`; conferente: `d4a62f2` (migração 0054, `ferramenta-grupos/.claude/guides/promocoes.md`). No notebook, a rotina "Conferente do site" (`maestri/plano-workspace.md`).

**Alternativas descartadas:** seguir consertando caso a caso, quando ela avisa.
