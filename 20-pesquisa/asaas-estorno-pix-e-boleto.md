---
tipo: pesquisa
data: 2026-10-12
conferido: 2026-10-12
---
# Asaas: estorno de Pix e de boleto

Por que o estorno das mensalidades da conta de teste foi recusado no sandbox em 12/10, e o que isso pede antes de abrir o cadastro. Contexto em [[2026-10-12]].

## O que importa

- **A assinatura de teste nasceu sem chave Pix na conta.** O sistema pediu Pix, e o Asaas registrou a assinatura e as cobranças dela como boleto. A chave Pix da conta do sandbox foi criada 3 segundos depois da assinatura (10/10, 10h29min07s contra 10h29min04s). Uma assinatura Pix criada em 12/10, já com a chave, ficou como Pix. A documentação não descreve essa troca: é o que as datas mostram, não uma regra escrita.
- **A hipótese levantada na conversa** (a fatura do Pix oferece boleto e Pix, e por isso vira boleto) explica o que a cliente vê, mas não a causa: a cobrança já era boleto antes de ser paga. A fatura de uma cobrança boleto mostra as duas formas porque o boleto do Asaas traz o QR Code do Pix quando a conta tem chave.
- **O Asaas só estorna pela chamada comum cartão e Pix.** Cartão: confirmada ou recebida. Pix: estorno total ou vários parciais. Boleto tem outro caminho: a chamada devolve um link, e quem pagou informa os dados bancários e manda documentos; o dinheiro só volta depois disso.
- **O estorno do Pix ficou esperando autorização.** A diferença da subida de plano (Pix) foi aceita para estorno e parou em "aguardando autorização de ação crítica". Não confirmado: se na produção todo estorno pela API para nesse ponto até alguém autorizar na conta do Asaas, e se dá para dispensar.
- **Cobrança marcada como paga pelo comando do sandbox** não foi estornada na hora ("tente novamente em alguns instantes"). Não confirmado se passa depois.

## O que fazer antes de abrir

1. Na conta de produção do Asaas, criar a chave Pix **antes** da primeira assinatura Pix.
2. Repetir a desistência com reembolso com uma assinatura que nasça Pix e com uma de cartão, até o dinheiro voltar.
3. Saber como a autorização de ação crítica funciona na produção: se cada estorno espera por ela, a desistência "na hora" que as telas prometem depende de alguém autorizar.
4. No código (sem decisão): quando o estorno falha no meio, hoje a cliente fica com a assinatura cancelada, sem o reembolso, e lê a frase do Asaas. E a cobrança que vier como boleto não tem estorno pela chamada comum.

## Fontes

- Sandbox do Asaas, lido pelo servidor em 12/10/2026: datas da chave Pix e das cobranças, respostas das chamadas de estorno.
- [Estornar cobrança](https://docs.asaas.com/reference/estornar-cobranca), documentação do Asaas, lida em 12/10/2026.
- [Estornar boleto](https://docs.asaas.com/reference/estornar-boleto), idem.
- [Cobranças via boleto](https://docs.asaas.com/docs/cobrancas-via-boleto), idem (o QR Code do Pix no boleto pede chave Pix na conta).
- [Cobranças via Pix](https://docs.asaas.com/docs/cobrancas-via-pix), pelo resumo da busca, não lida inteira: diz que dá para gerar QR Code sem chave, por uma instituição parceira. Não bate com o que o sandbox fez na assinatura; não confirmado qual vale.
