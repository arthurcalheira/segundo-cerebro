---
tipo: decisao
data: 2026-10-13
status: valendo
fonte: conversa de 13/10/2026 ("pode fazer como você sugeriu e junto fazemos a copy com ia")
---
# Montador de mensagem no mesmo plano da copy por IA

**Decisão:** a personalização da mensagem deixa de ser um editor de modelos com variáveis e vira um montador visual, feito no mesmo plano de código da copy por IA ([[2026-10-12-copy-por-ia-antes-do-lancamento]]). Cinco pontos:

1. Montador visual como tela padrão: ela liga e desliga partes da mensagem, escreve a abertura e a chamada em campos comuns e vê a prévia. Uma configuração vale para os cinco tipos de mensagem.
2. Estilos prontos, de um toque, como ponto de partida.
3. A frase de chamada entra na mensagem sozinha quando houver uma cadastrada.
4. Formato, convite, modelos e frases numa seção só.
5. O editor de hoje continua, atrás de "Editar o texto (avançado)".

**Por quê:** ela achou a personalização "muito complexa para justificar o preço do plano que contém ela" (o Maison, R$ 99,90, e o Atelier). A tela de hoje pede aprender uma sintaxe (`--nome--`, `novidade[…]`), tem cinco modelos em cinco abas, erros de sintaxe e três seções separadas na tela Regras; as frases de chamada só saem se ela escrever `--cta--` à mão. Lido no código em 13/10 (`ferramenta-grupos/apps/web/src/components/TemplatesForm.tsx`, `ferramenta-grupos/.claude/guides/mensagem.md`); a tela não foi aberta no navegador. As duas coisas vão juntas porque mexem na mesma tela: os campos de abertura e chamada do montador são onde a copy por IA entra.

**Onde entrou:** Plano 11 do projeto, na branch `claude/visual-message-builder-7dkpxl`: spec `ferramenta-grupos/docs/superpowers/specs/2026-10-13-plano-11-mensagem-e-ia-design.md` (`17afd41`), aprovada por ela na sessão em 13/10 ("spec aprovada"), e plano `ferramenta-grupos/docs/superpowers/plans/2026-10-13-plano-11-mensagem-e-ia.md` (`dd6dcae`). Construído em 13/10 (`ceed66d` a `a75d6b5`), no `master` e no servidor desde as 16h14 do mesmo dia. **A escrita por IA está desligada em produção**, sem a chave da Anthropic, por decisão dela na sessão: ainda não há como pôr crédito no Claude Console. Também por decisão dela, nada é escondido até lá: a tela mostra "Escrever com IA" como indisponível e os cartões do Maison e do Atelier dizem "Mensagem escrita por IA no seu tom". Fonte das duas: `ferramenta-grupos/STATE.md`, 13/10.

**O que a spec aprovada fixou** (gerado pelo Construtor a pedido dela, "não consigo sugerir nada agora, quero que ele gere para mim"; os textos estão na spec):
- Quatro estilos de mensagem: Clássica (a de hoje), Enxuta, Chamada no topo e Vitrine.
- Quatro tons da IA: Amiga que indica (o marcado), Curadora elegante, Animada e Direta. Colar mensagens próprias é opcional.
- A IA escreve só a abertura e a chamada; aparece na Fila, onde dá para editar, gerar de novo (até 3 por peça) ou usar o modelo.
- IA no Maison e no Atelier; o Essencial fica no modelo padrão.
- Modelo Claude Haiku 5.5, e não o Haiku 4.5 citado em [[2026-10-12-copy-por-ia-antes-do-lancamento]]: é o sucessor e custa um décimo, segundo a spec.
- Teto de 300 textos por conta por dia. Custo estimado: cerca de R$ 2,20 por mês por conta Maison e R$ 6,60 por conta Atelier (câmbio de R$ 5,50, não conferido).
- Contas com frase de chamada cadastrada e modelo padrão passam a receber a chamada na mensagem.
- Pede uma migração (`0037`) e a variável `ANTHROPIC_API_KEY` no servidor; o que os documentos legais precisam dizer está em [[pendencias]].

**Alternativas descartadas:** só os estilos prontos (personaliza pouco para a diferença de preço); só juntar as seções e consertar a frase de chamada (a sintaxe continuaria); fazer o montador antes e a copy por IA depois (a tela seria redesenhada duas vezes).
