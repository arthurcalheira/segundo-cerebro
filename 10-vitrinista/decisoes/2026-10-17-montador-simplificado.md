---
tipo: decisao
data: 2026-10-17
status: valendo
fonte: conversa com o Curador, 17/10/2026; estudo [[2026-10-17-mensagens-dos-grupos-de-vendedoras]]
---
# Montador de mensagens simplificado: chamada por promoção e interruptores

**Decisão:** o montador de mensagens passa a ser uma tela só:
- **Chamadas por promoção:** uma linha por tipo (normal, liqui, bazar, lançamento, reloginho, e uma por loja), já preenchida com o nome que o site usa e editável uma vez; o robô escolhe a chamada pela promoção da peça.
- **Interruptores do que vai na mensagem, na ordem que as vendedoras usam:** tamanhos disponíveis, meu tamanho (sem precisar de foto própria), De/Por, cupom, código de vendedora escrito, detalhes da promoção vindos do site (faixas do bazar, frete, prazo), convite do grupo. Prévia ao vivo ao lado.
- **Código de vendedora escrito por padrão** em todas as lojas (hoje só na Dress To).
- **Escrita por IA, tom, estilos e ordem das linhas em "Avançado".** Continuam existindo.

**Por quê:** ela acha o montador de hoje complexo; nos três grupos estudados em 17/10 a oferta tem uma estrutura fixa de 5 a 10 linhas, a chamada é da promoção e ninguém escreve texto sobre a peça.

**Atenção:** a página de vendas diz "mensagem no seu tom"; com a IA em "Avançado", a promessa fica mais fraca. Recomendação do Curador, não decidida por ela: perguntar a 2 ou 3 vendedoras do teste se usariam a escrita por IA.

**Detalhes aprovados por ela em 17/10, na spec do Tear** (`ferramenta-grupos/docs/superpowers/specs/2026-10-18-montador-simplificado-design.md`): quem nunca mexeu no montador passa direto; quem mexeu fica com o que tem em Avançado e vê "Usar o simplificado"; um "meu tamanho" para todas as peças; detalhes da promoção só com o texto que o robô já lê, desligados por padrão; o Essencial ganha chamadas e interruptores, o Avançado (com a IA) fica a partir do Maison; chamada por loja só quando ela pedir; peça sem promoção sem chamada.

**Onde entrou:** branch local `claude/montador-simplificado` (Tear), em execução em 17/10; vai primeiro à cópia de teste.

**Alternativas descartadas:** manter o montador atual com ajustes pequenos.
