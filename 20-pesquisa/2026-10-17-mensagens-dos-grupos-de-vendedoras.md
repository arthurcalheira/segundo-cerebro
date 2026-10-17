---
tipo: pesquisa
data: 2026-10-17
conferido: 2026-10-17
---
# Como as vendedoras montam as ofertas nos grupos (estudo de 17/10)

Pedido dela em 17/10: estudar grupos de vendedoras para simplificar o montador de mensagens da Vitrinista, que ela acha complexo.

## O que foi olhado

- Três grupos de ofertas de moda em que o número de administradora está: dois de vendedoras da Farm e o grupo da criadora. Aqui sem nome, @, código de vendedora nem texto copiado.
- 91 ofertas com foto e legenda, de 17/10 entre 14h17 e 18h57: 32 do grupo A, 1 do grupo B e 58 do grupo C. A captura foi ligada à tarde e desligada logo depois da leitura, perto das 19h; a noite ficou de fora, a pedido dela ("faça o relatório agora").
- **Limite:** uma tarde, três grupos, e um deles com uma oferta só. É um retrato, não uma média do mercado.

## O que se repete nos três grupos

1. **Uma estrutura só, de 5 a 10 linhas, quase sem texto corrido:** chamada da promoção, nome ou tipo da peça, tamanhos, preço "De / Por", cupom, código de vendedora e link. No grupo C, mais uma linha do tamanho ideal da criadora e o convite do grupo no fim. Nenhuma mensagem tem frase de venda sobre a peça ("perfeito para o verão…"). Mediana: 6 linhas no grupo A e 10 no C.
2. **A chamada é da promoção, não da peça.** Cada vendedora tem 3 a 5 chamadas fixas, uma por promoção ("30% OFF no verão", "Liqui 30% OFF", "Bazar até 50%", "Lançamento Alto Verão", uma por loja de varejo), repetidas palavra por palavra em todas as peças daquela promoção. Muda a promoção, muda a chamada.
3. **O código de vendedora vai escrito em toda mensagem**, nos três grupos, mesmo quando já está no link. O cupom vai sempre que a promoção tem cupom, numa linha própria.
4. **Os tamanhos disponíveis vão sempre,** numa linha. No grupo C, quase toda peça leva também o tamanho que a criadora usa ("meu tamanho ideal"), sem foto dela.
5. **Detalhes da promoção copiados do site** entram na mensagem: as faixas extras do bazar ("+10% na 2ª peça…"), o frete grátis acima de um valor, "só por 48h", "cupom não vale no alto verão".
6. **Às vezes duas peças numa mensagem** (blusa e saia, bata e short, ou duas peças de varejo), cada uma com tamanhos, preço e link.
7. **O convite do grupo vai em todas as mensagens** no grupo C, no fim.

## Ritmo

- Grupo C: uma oferta a cada 5 minutos exatos, das 14h17 às 18h57, revezando Farm (liqui, lançamento, bazar), Dress To (bazar) e varejo (Riachuelo, Renner, C&A). O intervalo exato sugere ferramenta de envio automático; não confirmado.
- Grupo A: em rajadas, várias no mesmo minuto (32 ofertas em 42 minutos), quase só da liqui. Parece envio à mão, em lote.
- Grupo B: uma oferta na tarde.

## O que isso sugere para o montador da Vitrinista

Hoje o montador tem estilo, partes da mensagem, tom e escrita por IA. O que os grupos mostram é mais simples:

1. **Trocar estilo, tom e IA por "chamada por promoção":** uma linha por tipo (normal, liqui, bazar, lançamento, reloginho, e uma por loja), já preenchida com o nome que o site usa e editável uma vez. O robô escolhe a chamada pela promoção da peça.
2. **Partes como interruptores, na ordem que elas usam:** tamanhos, meu tamanho (sem precisar de foto), De/Por, cupom, código de vendedora escrito, detalhes da promoção, convite do grupo. Uma prévia ao lado.
3. **Código de vendedora escrito por padrão** em todas as lojas (hoje só na Dress To).
4. **Os detalhes da promoção vindos do site** (faixas do bazar, frete, prazo) numa linha opcional, como o cupom já vem.
5. **A escrita por IA vira opção avançada.** Nenhuma das três escreve texto sobre a peça; o tom delas está na chamada e nos emojis. Isso pesa contra o argumento "no tom dela" da página de vendas: vale perguntar a vendedoras do teste antes de investir mais na IA.

Não confirmado: se isso vale para vendedoras de fora da Farm e para o horário da noite.

## Fontes

- Mensagens dos três grupos em 17/10, lidas do servidor (programa de conexão do WhatsApp, captura ligada só para este estudo) e apagadas em seguida; nada foi guardado fora do servidor além deste resumo.
- Montador atual: `ferramenta-grupos/packages/core/src/message/template.ts` e `ferramenta-grupos/apps/web/src/components/MessageBuilderForm.tsx`.
