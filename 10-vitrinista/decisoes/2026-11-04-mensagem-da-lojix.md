---
tipo: decisao
data: 2026-11-04
status: valendo
fonte: conversa de 04/11, durante a live da Lojix ("tira o 'só até..' das mensagens"; "deixa o lojix para celebrar em cima, tira esse 25 off e deixa o reloginho embaixo"; "tira também o texto 'com o cupom lojix'"; "faz o deploy logo")
---
# Mensagem da Lojix

**Decisão:**
1. **Sem prazo:** a mensagem da Lojix não diz "só até", com ou sem prazo na promoção. Fora da Lojix, o reloginho do site continua com o horário.
2. **Ordem:** na Lojix, o título vem em cima e a linha da promoção numa linha própria, logo abaixo. Vale também para quem tem título próprio, como a Dani.
3. **Cupom uma vez só:** o nome da promoção à mão não repete o cupom ("⚡ Reloginho 25% OFF"); o cupom sai só na linha do cupom, que aparece quando o carrinho dá o desconto.
4. **Pressa na live:** os consertos subiram na hora, fora da meia-noite, com o QA antes; o comando `message:abas --trocar` subiu antes do QA, que revisou depois.

**Por quê:** a live não tem hora certa para acabar, então o "só até 23h59" da promoção à mão prometia um prazo que não era da FARM. A Dani escreve o próprio título, e o sistema punha a promoção em cima dele.

**Onde entrou:** produção em 04/11, `e3fe171c` (sem prazo), `750869d9` (ordem) e `8ad24a10` (comando para trocar um trecho do texto de uma aba). Registro dos deploys no `deploy-meia-noite.md` do Gerente.

**Alternativas descartadas:** tirar a linha da promoção das mensagens da Lojix (recomendação do Gerente, não escolhida); a Dani apagar o "25%OFF" e o "cupom: LOJIX" sozinha.
