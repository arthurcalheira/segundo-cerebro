---
tipo: decisao
data: 2026-11-23
status: valendo
fonte: conversa de 23/11
---
# Catálogo completo da Renner e da Riachuelo pelo arquivo do leitor dela; Telegram passa a ler

**Decisão (catálogo):**
1. O catálogo inteiro da Renner e da Riachuelo (moda feminina) entra na Vitrinista pelos arquivos que o leitor dela grava de hora em hora numa pasta do servidor. O leitor é dela e roda fora do código do projeto; a Vitrinista só lê os arquivos, sem tocar no leitor. Ela mandou as instruções e a especificação do arquivo na conversa de 23/11 (depois, uma versão nova com a última vez em que cada peça foi vista na loja).
2. Isso resolve os lançamentos da Renner: peça que aparece pela primeira vez no arquivo, depois da primeira carga, entra como lançamento no topo de "Mais recentes". A primeira carga não vira lançamento.
3. A fila do robô da Fran continua junto: a peça que está nas duas fontes fica uma só.
4. Liga e desliga por variável, sem root. Renner e Riachuelo seguem só nos Stories, sem ir aos grupos.

**Ajustes pedidos pelo QA antes de subir (mandados à Engenharia em 23/11):** a peça só sai de venda depois de faltar em 2 leituras seguidas; se uma leitura tirar peças demais de uma vez, o sistema segura e avisa; o arquivo que some ou muda de nome é esquecido depois de 6 h, sem congelar a loja; a peça que já estava no catálogo e aparece nos lançamentos da loja passa a contar como lançamento.

**Ressalvas aceitas:** as fotos da Renner não abrem a partir do servidor (a loja recusa); a peça sem foto aparece com a moldura vazia e falta ela conferir no celular. O arquivo não traz tamanhos, então essas peças ficam sem grade.

**Fechados na mesma conversa:** cupons da Renner e da Riachuelo nos Stories, "não precisa"; o e-mail de cartão recusado na Stripe, "feito" por ela; o assunto com 💛 chegou bonito; as 27 peças da Farm com data de 2033 a 2049, ela não lembra de ter visto fora de ordem (sem tarefa).

## Telegram

**Decisão:** os canais Favoritos Renner, Minha C&A e Vitrine Riachuelo passam de "contar" para "ler" ("como faço isso?"; o Gerente ligou). Ler guarda as mensagens e cria propostas de botão de promoção; nada sai sozinho. O Gerente confere cada proposta no site da loja antes de aprovar (regra das promoções de 12/11) e descarta o resto.

**Onde entrou:** o catálogo, na `claude/catalogo-arquivo` (`317a4be3`, recusada pelo QA, em correção); a produção não mudou. O Telegram, por comando na produção, sem deploy.
