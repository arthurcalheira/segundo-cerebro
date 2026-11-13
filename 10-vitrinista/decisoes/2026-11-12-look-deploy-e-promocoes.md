---
tipo: decisao
data: 2026-11-12
status: valendo
fonte: conversa de 12/11 (story de look, cobrança sobre o ok de deploy, Zumzum)
---
# Story de look, deploy sem perguntar de novo e promoções decididas pelo Gerente

**Decisão:**
1. Story de look: de 2 a 4 peças da mesma loja, sem preço na arte, e o "quero" responde com todas as peças. FARM Rio, FARM Etc e Fábula contam como uma loja só (ok dela). No look misto, a arte e o texto em volta usam "FARM Rio" e o bloco de cada peça usa a loja dela; quem escolheu isso foi o Gerente, porque "FARM Rio" é o nome que a cliente reconhece.
2. Deploy do que ela pediu ou aprovou como tarefa, e de conserto de bug: sobe depois do QA aprovado e da cópia de teste sem erro, sem pedir o ok de novo, e ela é avisada depois. Continua pedindo o ok dela na hora: ligar envio ou publicação, publicar algo para fora, gastar e mexer em conta de assinante fora de conserto de bug.
3. Promoções: o que o Gerente confere no site da loja e tem quase certeza (estender, encerrar, renomear, dispensar falso alarme, criar botão), ele faz sozinho e avisa depois. Só pergunta quando há dúvida real sobre o que a loja oferece.
4. Vídeo dos Stories: subida até 500 MB, e o vídeo gravado continua com até 100 MB (limite da Meta).

**Por quê:** ela cobrou várias vezes ter de repetir o ok ("já falei sim quinze milhões de vezes") e não quer ser chamada para o que dá para conferir por ferramenta.

**Onde entrou:** `bdeafda0` (vídeo), `ef6f811e` (look, migração `0090`) no `master` e na produção; família Farm em `claude/look-familia-farm` `bda5c84f`, esperando o QA.

**Alternativas descartadas:** look com lojas diferentes fora da família Farm; usar a loja da 1ª peça no look misto.

**Pergunta guardada (ela pediu para segurar):** pôr uma faixa escura atrás do texto do modelo Geral, porque o texto branco some em foto clara. A recomendação do Gerente é pôr.
