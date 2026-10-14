---
tipo: decisao
data: 2026-10-13
status: valendo
fonte: conversa com o Curador, 13/10/2026 ("tira esse aviso de risco em 40")
---
# Sem o aviso de risco acima de 40 mensagens por dia

**Decisão:** sai da tela Regras o aviso "Quanto mais mensagens por dia, maior o risco de o WhatsApp bloquear o número. Recomendamos até 40 por dia e um número só para o grupo."

**Por quê:** dito por ela: já testou e envia todo dia mais ou menos 100 mensagens em 10 grupos. O Curador não viu esses envios; é o relato dela.

**Onde entrou:** feito na cópia local do projeto em 13/10, à noite, a pedido dela ("pode tirar o aviso dos 40"); **sem commit, sem push e sem deploy** até ela dar o ok de cada um. Saíram o aviso da tela (`RulesForm.tsx`), `DAY_COUNT_WARNING` e o campo `warning` de `dayCountView` (`apps/web/src/lib/rules-form.ts`) e `RECOMMENDED_MAX_PER_DAY` (`packages/core/src/rules/rules.ts`), com os testes. Typecheck e as suítes de core (1062) e web (677) passaram; a tela não foi aberta no navegador.

**Correção do Curador:** ele tinha dito na conversa que os documentos legais não citavam o número 40. Citavam: o Termo de riscos (`docs/legal/riscos.md`) dizia "avisa quando passa de 40". A frase foi cortada ali e no texto gerado (`apps/web/src/legal/texts.ts`), **sem mudar a versão do Termo** (mudar a versão pede o aceite de novo a todas as contas; fica para ela decidir). Também acertados: `AGENTS.md`, `.claude/guides/web.md` e `docs/implantacao.md` do projeto.

**Alternativas descartadas:** nenhuma foi discutida.
