---
tipo: decisao
data: 2026-10-17
status: valendo
fonte: conversa com o Curador, 17/10/2026
---
# Montador de mensagens pela IA, a partir das mensagens da vendedora

**Decisão:** a vendedora cola 2 ou 3 mensagens que já mandou no grupo e, se quiser, explica em texto como quer; a IA (Claude Haiku 5.5) gera uma vez o modelo da mensagem com os campos do sistema; ela vê a prévia com uma peça real e aprova ou pede ajuste por texto. Quem não tem mensagem escolhe entre 3 modelos prontos. Cada envio continua saindo do modelo com os dados reais da loja: a IA não escreve mensagem por peça nesta função.

**Por quê:** o montador simplificado ([[2026-10-17-montador-simplificado]]), testado por ela na cópia de teste, continuou complexo ("eu mesmo não entendi como é que se usa"). A ideia é dela; o estudo dos grupos ([[2026-10-17-mensagens-dos-grupos-de-vendedoras]]) mostra que cada vendedora repete um formato fixo, fácil de ler a partir de exemplos.

**O que muda:** o montador simplificado (branch `claude/montador-simplificado`, `92fe774`) não vai para a produção; o que servir dele é reaproveitado. Está na cópia de teste até a próxima atualização dela.

**Detalhes aprovados por ela em 17/10, na spec da Trama** (`ferramenta-grupos/docs/superpowers/specs/2026-10-17-montador-por-ia-design.md`, branch `claude/montador-por-ia`, `41faeba`): os 3 modelos prontos valem para todos os planos; criar o modelo pelas próprias mensagens, a partir do Maison; quem já configurou o montador mantém a mensagem, com o editor de texto em Avançado, e os estilos e as partes saem da tela; a escrita por IA por peça do Plano 11 sai das telas e é desligada, sem apagar nada do banco; teto de 20 criações e ajustes por conta por dia (a nova tentativa depois de erro não conta).

**Onde entrou:** tarefa da Trama `.maestri/tarefa-montador-por-ia.md`, branch local `claude/montador-por-ia`, spec aprovada em 17/10; plano e execução em andamento.

**Alternativas descartadas:** o montador simplificado de chamadas e interruptores; a IA escrevendo cada mensagem (custo por envio e risco de inventar preço ou tamanho).
