---
tipo: decisao
data: 2026-10-15
status: valendo
fonte: conversa com o Curador, 15/10/2026 ("1 a 4 ok. deixa só com contato na pagina, sem nome e cpf")
---
# Lacunas legais respondidas sem advogado

**Decisão:** ela aprovou as quatro mudanças de risco alto da pesquisa [[2026-10-15-lacunas-legais]] e decidiu não mostrar nome nem CPF no site.

1. **Fim do 12x:** não renova o compromisso sozinho. Ao fim das 12 parcelas, renova no 12x só com aceite dela; sem aceite, passa ao mensal comum, sem multa, com aviso antes. Substitui a decisão 1(a) de 15/10 em [[2026-10-14-anual-em-12x-com-compromisso]].
2. **Anual à vista, cancelar depois dos 7 dias:** devolve os meses inteiros não usados, menos 20% deles (a mesma conta da multa do 12x).
3. **Desistência nos 7 dias:** sai o limite de uma por pessoa. O teste grátis continua um só por cartão e número.
4. **Foro:** o domicílio da consumidora.
5. **Identificação:** o site mostra só o contato (`contato@usevitrinista.com.br`), sem nome, CPF nem endereço. Recomendação do Curador era nome, CPF e endereço comercial; ela escolheu sem. Risco médio (Decreto 7.962, art. 2º, I e II), aceito por ela. A Privacidade também deixou de nomear a controladora (LGPD, art. 9º, II): risco apontado pelo Tear e aceito por ela em 15/10 ("aceito o risco"); a correção, se houver cobrança, é incluir o nome.

As demais lacunas seguem as respostas propostas na seção 6 do documento "Vitrinista — pontos para o advogado" (risco baixo ou médio, sem decisão de produto).

**Por quê:** ela não tem como pagar advogado; a pesquisa marcou os quatro primeiros como risco alto. No quinto, ela não quer o nome ligado à marca ([[2026-10-11-criadora-sem-ligacao-publica]]).

**Devolução do anual (adendo do Tear, `9176b62`, aprovado em 15/10; ela confirmou ao Curador com "sim, eu acho", depois de responder no terminal do Tear):** vale no cartão e no Pix depois dos 7 dias; o mês em curso conta como usado; devolução = meses não começados × o mês do anual (R$ 49 ou R$ 99) × 80%, arredondada para baixo (Maison pago em 15/10/2026 e cancelado em 03/02/2027: R$ 313,60); sai automática no cancelamento, com valor e data na tela; o plano acaba no fim do mês em curso, sem desfazer o cancelamento no mesmo ano.

**Onde entrou:** no adendo da spec do Plano 12 (`9176b62`) e no Plano 12E (`24fef75` a `c03ec45`), no ar desde 15/10, 22h36. A devolução do Pix depois de 90 dias pelo suporte entrou na 5H (branch `claude/plano-5h-documentos`, sem push). Antes: Vai para o Tear depois do Pix, na branch `claude/stripe-billing-i0eof8`: `.maestri/tarefa-lacunas-legais.md`.

**Alternativas descartadas:** renovação automática do 12x com multa; anual sem devolução; mostrar nome e CPF; abrir ME ou SLU agora (custo de contador).
