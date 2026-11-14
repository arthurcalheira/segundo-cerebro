---
tipo: decisao
data: 2026-11-13
status: valendo
fonte: conversa de 13/11 (mensagem de uma assinante sem tamanhos e com o desconto repetido)
---
# Desconto sem repetir, botão de usar sempre à vista e lembrete por e-mail

**Decisão:**
1. Desconto repetido, corrigido na raiz (pedido dela): quando o nome da promoção já traz o mesmo percentual da peça, a chamada não repete o `{desconto}`. Vale para todas as assinantes, inclusive para as chamadas já gravadas. Com percentuais diferentes (ex.: "Bazar até 60% OFF" e peça a 40%), os dois ficam, porque o desconto da peça informa a cliente (escolha do Gerente). Se tirar o desconto deixaria a frase quebrada (um "·", "com" ou "e" sobrando), a frase fica como era: repetida é melhor que quebrada.
2. Botão de usar a mensagem fixo no rodapé da tela Mensagem (decisão dela), com aviso quando há edição sem aplicar. O modelo Completa continua pré-marcado (escolha do Gerente).
3. Na assinante que ficou sem tamanhos, o Gerente põe a linha dos tamanhos logo abaixo da chamada da mensagem geral (ok dela: "arruma o texto para ela também").
4. Lembrete por e-mail retomado (ok dela), pelo SMTP da caixa do Zoho no plano gratuito.

**Por quê:** tocar num modelo pronto só marcava a opção, e a assinante achou que tinha trocado a mensagem; o desconto repetido aparecia em toda peça da promoção com o mesmo percentual.

**Onde entrou:** `claude/chamada-sem-repetir` `5dcde5d4`, `claude/mensagem-usar-fixo` `b6ab4e59` e `claude/lembrete-email-2` `b0944762` (migração `0091`), todas no QA em 13/11; sobem sem perguntar de novo quando ele aprovar.

**Alternativas descartadas:** tirar o desconto mesmo deixando a frase quebrada; tirar o desconto também quando os percentuais são diferentes.
