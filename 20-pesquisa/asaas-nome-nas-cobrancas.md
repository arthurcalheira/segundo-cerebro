---
tipo: pesquisa
data: 2026-10-13
conferido: 2026-10-13
---
# Asaas: que nome aparece nas cobranças

Pergunta dela em 13/10: os e-mails das cobranças de teste trazem "João da Silva"; em produção vai aparecer o nome dela? Liga-se a [[2026-10-11-criadora-sem-ligacao-publica]] e à pendência dos Termos de uso que identificam pessoa física ([[pendencias]]).

## O que importa

- **O nome do e-mail é o do titular da conta do Asaas.** Lido na API do sandbox em 13/10 (`/myAccount/commercialInfo`): a conta de teste é de pessoa física (`personType: FISICA`) e o `name` é "João da Silva", o titular fictício do sandbox. Não há campo de nome fantasia para conta de pessoa física (`companyName` vazio, `availableCompanyNames` vazio).
- **Conta de produção aberta no CPF mostra o nome dela** nos e-mails, na fatura e no recebedor do Pix. Conclusão do item acima; não testado em produção.
- **Conta aberta num CNPJ deixa escolher o nome** entre os que a Receita tem para aquele CNPJ, razão social ou nome fantasia (`availableCompanyNames`). A documentação descreve isso para subconta PJ; para a conta principal não foi confirmado, mas o campo existe na mesma chamada.
- **MEI não resolve sozinho:** a razão social do MEI é o nome completo da pessoa. O nome fantasia do MEI é incerto: uma fonte de 2026 diz que dá para atualizar no Portal do Empreendedor, outra de 2023 diz que o campo deixou de existir. Não confirmado.
- **Empresa com razão social própria** (sociedade limitada de uma sócia só, por exemplo) é o caminho em que nenhum documento de cobrança traz o nome dela. O quadro de sócios de um CNPJ continua público na Receita: quem consultar o CNPJ acha o nome.
- **No Pix o nome do recebedor é o do cadastro no banco**, não um apelido; não dá para trocar por configuração. Fonte secundária, não a regra oficial do Asaas.
- **Não confirmado:** se o Asaas deixa configurar o nome que aparece na fatura do cartão do cliente; se os e-mails e SMS do Asaas podem ser desligados por cliente para a Vitrinista mandar os próprios (a busca não achou a página; perguntar ao suporte ou testar no sandbox).
- **Limite legal:** loja virtual tem de identificar o fornecedor (nome e CPF ou CNPJ). É assunto do advogado, com a pendência dos Termos.

## Outras formas de cobrar (13/10, busca rápida, pouco confirmado)

Pergunta dela: existe outra forma de cobrar sem o nome aparecer? Três famílias; nenhuma foi testada.

- **Stripe:** a documentação diz que o nome público do negócio é escolhido nas configurações (nome fantasia, endereço do site ou razão social) e é ele que vai na fatura do cartão; no Pix, o recebedor que aparece no banco do cliente é o parceiro da Stripe (Ebanx), com o nome do negócio num campo de mensagem. Não confirmado: se pessoa física abre conta no Brasil, se o CPF aparece em algum recibo, e a cobrança recorrente por Pix (duas páginas da documentação se contradizem).
- **Plataformas de produto digital (Hotmart, Kiwify e parecidas):** a venda passa pela plataforma, e uma reclamação pública mostra a cobrança no cartão identificada só como "HOTMART". Não confirmado: o que a página de compra e o recibo mostram do vendedor, as taxas de hoje e se servem a três planos com troca, diferença proporcional e estorno como a Vitrinista faz.
- **Outro gateway brasileiro no CPF:** a regra do Pix é a mesma (nome do cadastro no banco); não resolve.

Custo de trocar: a cobrança da Vitrinista foi construída e testada sobre o Asaas (plano 5E, trocas de plano, atraso, estorno, avisos). Outro meio de pagamento é um plano de código novo.

## Stripe a fundo (13/10, páginas oficiais)

Pedido dela: "estude sobre a stripe".

- **Pessoa física pode abrir conta no Brasil, só com o CPF.** O CNPJ é opcional para "Pessoa Física". Pede CPF regular na Receita, documento com o CPF, endereço no Brasil, faixa de renda mensal, site ou rede social e conta bancária em reais no mesmo CPF. O nome legal não muda depois da verificação, e passar para CNPJ mais tarde exige abrir conta nova.
- **O que o cliente vê é o que ela puser em "informações comerciais públicas":** nome e site do negócio, e-mail, telefone e endereço de suporte e o texto da fatura do cartão. Aparecem nas faturas do cartão e nos recibos por e-mail. O texto da fatura tem de 5 a 22 caracteres e deve refletir o nome fantasia. **Não confirmado:** se, numa conta de pessoa física, o nome legal ou o CPF aparecem em algum recibo, fatura ou página de pagamento; e o endereço de suporte, que é público, seria o dela. Dá para conferir de graça numa conta de teste, sem ativar.
- **Pix: só pagamento avulso em conta brasileira.** A documentação diz que o Pix Automático (recorrente) não está disponível para contas do Brasil, e a página de preços diz que o Pix é "somente por convite". No banco do cliente, o recebedor que aparece é o parceiro da Stripe (Ebanx), com o nome do negócio no campo identificador. Estorno em até 90 dias.
- **Na prática, assinatura automática na Stripe seria só no cartão.** Como o Pix e o boleto entrariam numa assinatura (uma fatura por mês paga à mão) não foi confirmado.
- **Dinheiro:** cartão nacional fica disponível em 30 dias; Pix e boleto em 2 dias; repasse diário; o primeiro repasse pode levar até 30 dias. Contestação: R$ 55,00.
- **Custo de trocar:** refazer a cobrança (o plano 5E, as trocas de plano com diferença, atraso, estorno e os avisos) e testar tudo de novo.

### Teste na conta de teste da Stripe (13/10, pela API)

Conta criada por ela, país Brasil, sem ativar e sem dados de titular. O Curador criou um produto, um preço de R$ 99,90 por mês, um cliente fictício e uma assinatura paga com o cartão de teste, e leu o recibo, a fatura em PDF e a página de pagamento.

- **Recibo e fatura mostram só o nome público** que ela pôs na conta ("Vitrinista sandbox"). Nenhum nome de pessoa, nenhum CPF; o campo de documento fiscal da fatura veio vazio (é opcional).
- **O e-mail de contato do recibo é o do login da conta** enquanto não houver um e-mail de suporte cadastrado. Neste teste saiu o e-mail pessoal dela. Corrige-se pondo o `contato@` do domínio em informações públicas.
- **A fatura tem um bloco de endereço do negócio** (veio só "Brazil", porque não há endereço cadastrado). Depois da ativação, o endereço que estiver nas informações públicas aparece ali: numa conta de pessoa física, cuidar para não ser o de casa.
- **Pix e boleto não estão disponíveis nesta conta:** a configuração lista só cartão e Apple Pay, e finalizar uma fatura com Pix foi recusado ("not available for this account"). Pode mudar depois da ativação; não confirmado.
- **A página de pagamento da assinatura** saiu só com cartão.
- **Limite do teste:** a conta não tem nome legal nem CPF cadastrados, então o teste mostra quais campos os modelos usam, não o que acontece depois da verificação. Os modelos usam o nome público, o e-mail e o endereço de suporte.
- Ficaram na área de teste da conta dela: um produto, um preço, um cliente, uma assinatura ativa e duas faturas em rascunho. A chave de teste foi colada na conversa: gerar outra ao terminar.

### Mesclar cartão na Stripe com Pix em outro lugar (pergunta dela, 13/10)

Raciocínio do Curador, sem fonte nova: tecnicamente dá, mas o Pix mostra sempre o nome de quem recebe. Pix pelo Asaas no CPF mostraria o nome dela a quem paga por Pix, e seriam dois sistemas de cobrança para manter. O único Pix que esconderia o nome é o da própria Stripe (recebedor Ebanx), que é avulso e "por convite". Correção apontada por ela no mesmo dia: o Pix do Asaas hoje também é avulso (uma cobrança por mês, paga à mão; o sistema não usa Pix automático), então o Pix avulso da Stripe não seria perda em relação ao que existe, se a Stripe emitir a fatura mensal com Pix e liberar o Pix para a conta, o que não foi confirmado. O teste grátis da Vitrinista já é só no cartão (código e Termos, conferido em 12/10), o que diminui a perda de ficar sem Pix.

### Parcelamento no cartão pela Stripe (13/10, à noite)

Pedido dela: "pesquisar como podemos ativar esse pagamento parcelado pela stripe", para o plano anual ([[2026-10-13-plano-anual-maison-49-atelier-99]]).

- **Não há o que ativar: a Stripe não oferece parcelamento de cartão para conta do Brasil**, pelo que as páginas oficiais mostram. A página de parcelamento lista três produtos: Mastercard Installments (clientes na Austrália, Canadá, Alemanha, Malásia, Emirados, Reino Unido e Estados Unidos), México (meses sin intereses) e Japão. A página "formas de pagamento aceitas no Brasil" e a página de preços do Brasil não citam parcelamento.
- **Mesmo onde existe, não vale para assinatura:** a documentação de cartões diz que, com parcelamento gerido pelo emissor, não dá para usar assinaturas para criar parcelas.
- **Não confirmado:** nenhuma página diz com todas as letras "não disponível no Brasil"; a conclusão vem da ausência. O teste que fecha a questão é pedir os planos de parcelamento pela API na conta de teste dela (precisa de chave de teste nova, fora do vault), ou perguntar ao suporte da Stripe.
- **O que dá o efeito de parcelado sem parcelamento:** assinatura de 12 cobranças mensais de R$ 49 com compromisso de um ano ("anual cobrado por mês"; a Stripe tem assinatura com número fixo de cobranças). Não ocupa o limite do cartão, mas o dinheiro entra mês a mês, a cliente pode deixar de pagar no meio e cobrar depois de ela "cancelar" é receita de contestação. Não é o que ela decidiu (anual cobrado de uma vez).

Fontes, lidas em 13/10/2026: [parcelamento na Stripe](https://docs.stripe.com/payments/installments), [Mastercard Installments](https://docs.stripe.com/payments/mastercard-installments?locale=pt-BR), [cartões](https://docs.stripe.com/payments/cards), [formas de pagamento aceitas no Brasil](https://support.stripe.com/questions/accepted-payment-methods-in-brazil), [preços no Brasil](https://stripe.com/br/pricing).

## Taxas (13/10)

Abrir empresa não é viável para ela agora (dito na conversa em 13/10). Custo por mensalidade paga, calculado sobre os três planos (R$ 59,90, R$ 99,90 e R$ 179,90):

| Meio | Regra | Essencial | Maison | Atelier |
|---|---|---|---|---|
| Asaas, cartão | 2,99% + R$ 0,49 | R$ 2,28 | R$ 3,48 | R$ 5,87 |
| Asaas, Pix | R$ 1,99 | R$ 1,99 | R$ 1,99 | R$ 1,99 |
| Stripe, cartão | 3,99% + R$ 0,39, mais 0,7% das assinaturas | R$ 3,20 | R$ 5,08 | R$ 8,83 |
| Stripe, Pix | 1,19%, mais 0,7% das assinaturas | R$ 1,13 | R$ 1,89 | R$ 3,40 |
| Eduzz | 4,9% + R$ 2,49 | R$ 5,43 | R$ 7,39 | R$ 11,31 |
| Hotmart | 9,9% + R$ 1,00 | R$ 6,93 | R$ 10,89 | R$ 18,81 |
| Kiwify | 8,99% + R$ 2,49 | R$ 7,88 | R$ 11,47 | R$ 18,66 |

- Asaas e Stripe: páginas oficiais de preço, lidas em 13/10. O Asaas cobra ainda R$ 0,99 por cobrança paga quando os avisos por e-mail e SMS estão ligados, e tem preço promocional nos três primeiros meses (Pix R$ 0,99, cartão 1,99% + R$ 0,49).
- O Pix da Stripe é "somente por convite", segundo a página de preços.
- Eduzz, Hotmart e Kiwify: números de blogs de 2026, que divergem entre si; não conferidos nas páginas oficiais. Há ainda taxa de saque (R$ 1,99 a R$ 9,00) e o cartão liberado em 30 dias.
- Na Stripe a contestação custa R$ 55,00; o Asaas não informa a dele na página.

## Fontes
- [Preços e taxas do Asaas](https://www.asaas.com/precos-e-taxas) e [preços da Stripe no Brasil](https://stripe.com/br/pricing), lidas em 13/10/2026.
- Stripe, lidas em 13/10/2026: [informações para abrir conta no Brasil](https://support.stripe.com/questions/brazil-specific-information-to-open-a-stripe-account), [mudanças de verificação de 2026](https://support.stripe.com/questions/2026-updates-to-brazil-verification-requirements), [configurar a conta, informações públicas](https://docs.stripe.com/get-started/account/set-up), [descrições no extrato](https://docs.stripe.com/get-started/account/statement-descriptors) e [prazos de repasse no Brasil](https://support.stripe.com/questions/brazil-specific-payout-schedule-and-payment-availability).
- [Comparação de plataformas (bit4learn)](https://bit4learn.com/pt/?p=1434) e [Tactus](https://tactus.com.br/qual-a-melhor-plataforma-digital/amp/): taxas de Eduzz, Hotmart e Kiwify, não conferidas.
- [Pix na Stripe](https://docs.stripe.com/payments/pix) e [o que é o descritor da fatura](https://support.stripe.com/questions/what-is-a-statement-descriptor-and-how-to-update-it), documentação da Stripe.
- [Reclamação de cobrança identificada como "HOTMART"](https://portaldaqueixa.com/brands/hotmart/complaints/hotmart-cobranca-nao-autorizada-em-cartao-de-credito-159066726) (indício, não regra).

- API do sandbox do Asaas, `GET /myAccount/commercialInfo` e `GET /myAccount`, lidas de dentro do worker em 13/10/2026.
- [Alterar o nome de uma subconta PJ via API](https://docs.asaas.com/docs/alterar-o-nome-de-uma-subconta-pj-via-api), documentação do Asaas.
- [Cobrança desconhecida](https://blog.asaas.com/release/cobranca-desconhecida/amp/), blog do Asaas: quem define os dados da cobrança é o recebedor.
- [Capturas de tela de pagamento Pix](https://imagetotable.ai/pt/blog/pix-screenshot-payment-details): o nome exibido é o registrado no banco (fonte secundária).
- [Como alterar nome fantasia MEI](https://www.omie.com.br/blog/como-alterar-nome-fantasia-mei/index.md) e [fórum Contábeis](https://www.contabeis.com.br/forum/legalizacao-de-empresas/392993/alterar-nome-fantasia-mei/): informações que se contradizem sobre o nome fantasia do MEI.
