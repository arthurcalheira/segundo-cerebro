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

**Onde entrou:** ainda não entrou no projeto. A tarefa do Construtor está em `.maestri/tarefa-copy-ia.md` (fora do git), reescrita em 13/10, esperando a aprovação dela e a leitura da cota.

**Alternativas descartadas:** só os estilos prontos (personaliza pouco para a diferença de preço); só juntar as seções e consertar a frase de chamada (a sintaxe continuaria); fazer o montador antes e a copy por IA depois (a tela seria redesenhada duas vezes).
