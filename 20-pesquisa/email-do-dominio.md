---
tipo: pesquisa
data: 2026-10-10
conferido: 2026-10-10
---
# E-mail com o domínio usevitrinista.com.br

## O que importa

- São duas necessidades diferentes, que usam os mesmos registros do DNS:
  1. **Caixa de entrada** para uma pessoa ler e responder (ex.: `contato@usevitrinista.com.br`). Substitui o e-mail pessoal que hoje aparece nos documentos legais.
  2. **Envio do sistema** (confirmar cadastro, "esqueci a senha", avisos de pagamento). É requisito para abrir as vendas, segundo `ferramenta-grupos/docs/superpowers/specs/2026-10-09-plano-5-lancamento-design.md`. Não foi pesquisado aqui.
- O DNS do domínio fica no próprio registro.br (servidores `a.sec.dns.br` e `c.sec.dns.br`, conferido em 10/10). Em 10/10 não havia nenhum registro MX nem TXT: o domínio ainda não recebe e-mail.
- Qualquer que seja o serviço, o caminho é o mesmo: criar a conta no serviço, pegar os valores que ele mostra (MX, SPF, DKIM) e cadastrar no registro.br em DNS → Configurar zona DNS → Nova entrada (pode ser preciso ligar o modo avançado antes). A propagação leva de 1 a 24 horas, conforme a fonte.
- Opções de caixa de entrada:

| Serviço | Custo | O que as fontes dizem | Não confirmado |
|---|---|---|---|
| Zoho Mail, plano gratuito | US$ 0 | Até 5 usuários, 5 GB cada, um domínio. Só pelo site e pelo app da Zoho: sem IMAP/POP, não dá para ler no Gmail ou no Outlook | Se o cadastro gratuito está aberto para o Brasil; não achei a página oficial |
| Hostinger Business Email | pago | Três planos (Starter, Standard, Premium); funciona com domínio registrado fora da Hostinger; tem teste gratuito | O preço em reais |
| Google Workspace Business Starter | pago | Cerca de US$ 7 a 8,40 por usuário por mês; 30 GB; é o Gmail com o domínio | O preço em reais (as fontes divergem: de R$ 24,30 a R$ 34,97) |

- Encaminhamento gratuito (receber em `contato@` e cair no e-mail pessoal) não foi pesquisado. Serve para receber, mas responder como `contato@` exige outro serviço.

## Andamento

- 10/10: escolhido o Zoho Mail gratuito e conta criada (informado na conversa). Conferido às 17h55, direto nos servidores do registro.br: a zona tem só o TXT de verificação do Zoho. **Faltam os registros MX, o SPF e o DKIM**: enquanto não existirem, a caixa não recebe nada.
- O endereço da caixa é `contato@usevitrinista.com.br` (confirmado na conversa; a primeira menção veio com erro de digitação).
- 17h57: a caixa existe no Zoho, mas a zona continua sem MX. O assistente do Zoho não pediu os registros; eles ficam no Admin Console, em Domains → o domínio → Email Configuration. Valores da ajuda oficial do Zoho para contas no data center `.com` (o TXT de verificação termina em `zmverify.zoho.com`): MX `mx.zoho.com` (10), `mx2.zoho.com` (20) e `mx3.zoho.com` (50); SPF `v=spf1 include:zohomail.com ~all`. O DKIM é gerado no Admin Console.
- 18h02: MX e SPF publicados (conferido em `a.sec.dns.br` e em 1.1.1.1; o 8.8.8.8 ainda guardava a resposta antiga dos MX). **DKIM ainda não existe** (procurado em `zmail`, `zoho` e `default._domainkey`). O recebimento não foi provado: a tentativa de conferir por SMTP foi recusada pelo Zoho por causa do IP residencial do notebook, o que não diz nada sobre a caixa. Falta uma mensagem de teste de fora.
- 18h05: troca do e-mail de contato pedida ao Construtor do 5C, como commit separado na branch dele; vai ao ar com o 5C. Conferir o recebimento antes desse deploy.
- Recebimento confirmado na conversa, logo depois: uma mensagem de fora chegou à caixa. Não informado se a resposta enviada de `contato@` foi testada. O DKIM continuava sem existir.
- Trocar o e-mail de contato no site é mudança no projeto: `docs/legal/termos.md`, `privacidade.md` e `cookies.md`, `apps/web/src/legal/texts.ts` (gerado pelo `pnpm --filter @fg/web legal`) e `apps/web/src/lib/format.ts`. Vai para o Construtor depois de o endereço estar confirmado e recebendo.

## Fontes

Consultadas em 10/10/2026, por busca na web. Nenhuma página oficial de preço foi aberta.

- registro.br, zona DNS e MX: https://www.locaweb.com.br/ajuda/wiki/como-verificar-seu-dominio-e-fazer-os-apontamentos-dns-do-email-go-no-registro-br e https://www.hostgator.com.br/blog/como-configurar-o-titan-em-um-dominio-na-registro-br/
- Zoho Mail gratuito: https://aiproductivity.ai/pricing/zoho-mail/ e https://tudosobrehospedagemdesites.com.br/como-criar-conta-gratuita-zoho-mail
- Hostinger: https://www.hostinger.com/ca/compare/hostinger-mail-vs-zoho-mail e https://www.hostinger.com/support/4625828-how-to-create-and-manage-hostinger-email/
- Google Workspace: https://www.eesel.ai/pt/blog/google-workspace-pricing , https://tecnoblog.net/noticias/vai-migrar-do-g-suite-gratis-ao-workspace-voce-ganhou-mais-tempo-sem-pagar/ e https://www.larksuite.com/pt_br/blog/google-workspace-pricing
- DNS do domínio: `nslookup` em 8.8.8.8 e direto em `a.sec.dns.br`, 10/10/2026.
- Zoho, registros MX: https://www.zoho.com/mail/help/adminconsole/configure-email-delivery.html
- Zoho, SPF: https://www.zoho.com/mail/help/adminconsole/spf-configuration.html
