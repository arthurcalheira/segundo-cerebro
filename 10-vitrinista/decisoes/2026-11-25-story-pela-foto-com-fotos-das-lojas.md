---
tipo: decisao
data: 2026-11-25
status: valendo
fonte: conversa de 25/11
---
# Story pela foto: comparar roupa com roupa, com as fotos das lojas numa pasta do servidor

**O problema (reclamação dela, 25/11):** a Fran subiu a foto dela de vestido no "Story pela foto" e nenhum resultado era o vestido; só voltavam peças cujas fotos são dela. Causa medida no banco: na Renner, o índice de fotos tinha 338 de ~8.900 peças à venda, e 336 dessas fotos eram da própria Fran (fila dela); na Riachuelo, ~1.470 de ~6.000 (quase todas dos lançamentos). As fotos das lojas dessas duas marcas não entram no índice porque os sites recusam o servidor (desde 23/11, de propósito). Então a busca comparava a pessoa, não a roupa.

**Decisão (conserto de bug, subiu sem perguntar de novo):**
1. Quando a peça tem foto da loja, a busca compara só por ela. A foto da Fran só conta quando a peça não tem nenhuma foto da loja, e com peso menor (0,75). O QA mediu com o modelo real: a peça com foto da loja não perdeu em nenhum caso.
2. A Vitrinista passa a ler fotos de peça de uma pasta do servidor, uma por peça, com o nome igual ao id da peça no link. Não muda o arquivo do catálogo.
3. A tela avisa quando menos da metade das peças do tipo buscado tem foto da loja.
4. Proteções antes de qualquer foto cair na pasta (pedidas pelo QA, três voltas): arquivo com defeito não trava o índice; pasta vazia nunca apaga o índice; foto regravada entra na leitura seguinte; o modelo de reconhecimento fora do ar não tira fotos da busca (espera crescente e tenta de novo); foto que falhou 3 vezes volta a ser tentada em 24 h.

**O que a coleta precisa entregar** (combinado na conversa; vale para quem grava as fotos): a foto principal de cada peça em JPEG, lado maior 512 px, qualidade 80, leitura liberada; baixar só foto de peça nova ou trocada; gravar num temporário e renomear, nunca esvaziar a pasta; apagar a foto da peça fora do catálogo há mais de 3 dias.

**Em aberto, com ela:** a Riachuelo, pelo leitor de lançamentos do Gerente rodando de madrugada só para as fotos (sem disfarce; pegou ~90% na carga completa); a Renner, pelo leitor dela no outro servidor, que precisa do acesso ao painel onde ele roda. Até as fotos chegarem, a busca da Renner e da Riachuelo segue fraca; nas outras lojas (FARM, FARM Etc, Fábula, Dress To, C&A) não muda nada.

**Onde entrou:** `claude/foto-indice-lojas` `bfed6df4`, `claude/foto-local-ressalvas` `73f5a857` e `claude/foto-modelo-fora` `b21a41e4`, todas no `master` e na produção em 25/11, sem migração.
