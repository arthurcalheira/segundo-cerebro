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
- [Comparação de plataformas (bit4learn)](https://bit4learn.com/pt/?p=1434) e [Tactus](https://tactus.com.br/qual-a-melhor-plataforma-digital/amp/): taxas de Eduzz, Hotmart e Kiwify, não conferidas.
- [Pix na Stripe](https://docs.stripe.com/payments/pix) e [o que é o descritor da fatura](https://support.stripe.com/questions/what-is-a-statement-descriptor-and-how-to-update-it), documentação da Stripe.
- [Reclamação de cobrança identificada como "HOTMART"](https://portaldaqueixa.com/brands/hotmart/complaints/hotmart-cobranca-nao-autorizada-em-cartao-de-credito-159066726) (indício, não regra).

- API do sandbox do Asaas, `GET /myAccount/commercialInfo` e `GET /myAccount`, lidas de dentro do worker em 13/10/2026.
- [Alterar o nome de uma subconta PJ via API](https://docs.asaas.com/docs/alterar-o-nome-de-uma-subconta-pj-via-api), documentação do Asaas.
- [Cobrança desconhecida](https://blog.asaas.com/release/cobranca-desconhecida/amp/), blog do Asaas: quem define os dados da cobrança é o recebedor.
- [Capturas de tela de pagamento Pix](https://imagetotable.ai/pt/blog/pix-screenshot-payment-details): o nome exibido é o registrado no banco (fonte secundária).
- [Como alterar nome fantasia MEI](https://www.omie.com.br/blog/como-alterar-nome-fantasia-mei/index.md) e [fórum Contábeis](https://www.contabeis.com.br/forum/legalizacao-de-empresas/392993/alterar-nome-fantasia-mei/): informações que se contradizem sobre o nome fantasia do MEI.
