# Ideias

Uma por linha, com a data. Quando uma virar decisão ou plano, mova para `decisoes/` ou para o projeto e deixe o link aqui.

Levantadas em 10/10/2026 pelo Curador, a pedido, depois que a 5D saiu dos planos ([[2026-10-10-sem-mensagens-agendadas]]). Nenhuma tem prova de demanda; "já previsto" quer dizer que o projeto já cita a ideia (spec geral de 26/09 ou spec do lançamento).

- 10/10 — Texto por IA no tom dela. Já previsto (a interface `CopyWriter` existe; hoje só há modelos). É a promessa 2 do posicionamento, ainda não cumprida.
- 10/10 — Link curto próprio e relatório de cliques. Já previsto (fase 2; entra primeiro no Atelier). Daria a prova real que a página de vendas não tem.
- 10/10 — Resumo da semana para a afiliada (peças enviadas, as mais clicadas, melhor horário). Novo; depende dos cliques.
- 10/10 — Curadoria que aprende com os cliques do grupo. Novo; depende dos cliques.
- 10/10 — Alerta de queda de preço e de volta ao estoque de peça já enviada. Já previsto (fase 2).
- 10/10 — Mensagem de "últimas unidades" quando a grade está acabando. Novo.
- 10/10 — Vitrines prontas: conjuntos de regras de um toque, com o método da fundadora. Novo.
- 10/10 — Calendário de moda: aviso antes de datas e liquidações, com sugestão de ajuste nas regras. Novo.
- 10/10 — Página pública do grupo (link na bio, com as últimas peças e o botão de entrar). Novo.
- 10/10 — Aviso fora do painel quando algo para: número desconectado, pagamento vencido, automático pausado. Novo; usa o serviço de e-mail que o lançamento já exige.
- 10/10 — Aquecimento guiado de número novo. Novo; não verificado se reduz banimento.
- 10/10 — Mais marcas no mesmo conector VTEX. Novo; depende do programa de afiliados de cada marca, não verificado.
- 10/10 — Renner, Riachuelo e C&A. Já previsto (fase 3; lojas não verificadas).

## Planos e página de vendas

**Decidido em 13/10/2026:** cobrança pela Stripe ([[2026-10-13-stripe-no-lugar-do-asaas]]), anual do Maison e do Atelier ([[2026-10-13-plano-anual-maison-49-atelier-99]]), teste com recursos do Maison para todos ([[2026-10-13-teste-com-maison-para-todos]]), cancelamento com pesquisa de motivo ([[2026-10-13-cancelamento-e-reembolso]]) e teto de 30 peças por dia no Essencial ([[2026-10-13-essencial-com-teto-de-30-pecas]]). O destaque do Maison e o convite a subir em cada bloqueio já estão no código. Das linhas abaixo, seguem sem decisão só "novidades só do Maison para cima" e o preço mensal do Essencial.

Sugestões do Curador em 10/10/2026, para o objetivo declarado na conversa: levar o máximo de assinantes ao Maison ou ao Atelier, com lucro e sem perder leads. Guardadas a pedido; **nenhuma foi decidida**. São práticas conhecidas de preço, não resultados medidos com afiliadas de moda. Cabem na 5H (página de vendas e de assinar).

A conta que orienta as sugestões: o Essencial rende R$ 59,90 por número, o Maison R$ 99,90 e o Atelier R$ 59,97 por número se a assinante usar os três, e ainda inclui o atendimento direto. O plano de maior lucro é o Maison. O custo real por número no servidor não foi medido.

- 10/10 — Teste grátis de 7 dias com os recursos do Maison para todo mundo, qualquer que seja o plano escolhido. No fim, quem não quiser o Maison desce para o Essencial. Hoje o teste vale no plano escolhido (`TRIAL_DAYS` em `packages/core/src/billing/subscription.ts`).
- 10/10 — Maison no centro da página de assinar, marcado como "recomendado pela Fran" (o selo caiu em 11/10: [[2026-10-11-criadora-sem-ligacao-publica]]; o destaque do Maison continua sem decisão). Não usar "mais vendido" sem dado. O Atelier ao lado serve de âncora de preço. Hoje a página não destaca nenhum plano.
- 10/10 — Convite a subir na hora da necessidade: segunda loja, editar a mensagem, foto própria, segundo grupo. A cobrança da diferença já existe; falta conferir se o convite aparece em todos esses pontos.
- 10/10 — Ao cancelar, oferecer a descida para o Essencial antes da saída.
- 10/10 — Novidades só do Maison para cima (texto por IA, alerta de queda de preço e o que mais vier): o Essencial fica como o básico que funciona.
- 10/10 — Plano anual só no Maison e no Atelier, por exemplo 12 meses pelo preço de 10. Não verificado como o Asaas trata cobrança anual.
- 10/10 — Não mexer agora: o preço do Essencial (subir para R$ 69,90, o piso da concorrente, arrisca leads; testar depois, com dados da 5G).
- 10/10 — Antes de vender o Atelier: definir canal e horário do atendimento direto. Decidido no mesmo dia, no brainstorming da 5G: WhatsApp e e-mail, todos os dias das 9h às 21h ([[2026-10-10-plano-5g-administracao]]).
- 10/10 — Pergunta em aberto: o alvo é o Maison, com o Atelier para quem precisa de vários números?
- 21/10 — Preços fora do código: as tabelas de preço num cadastro, com um comando ou uma tela na Administração que cria a tabela nova, os preços na Stripe e passa a usá-la, e os Termos e a página de vendas lendo os valores de lá. A troca de preço deixaria de pedir código e deploy. Mexe na cobrança: fazer com calma, como plano. Surgiu na troca para a tabela 3 ([[2026-10-21-precos-tabela-3]]).
- 21/10 — Testes no GitHub a cada push (GitHub Actions): as suítes inteiras de core, web, db e worker rodam fora do notebook, sem o limite de memória (a do worker leva ~1 h e cai por memória aqui). O construtor entrega com os testes do que mudou, e o Curador sobe na cópia de teste enquanto a suíte completa roda em paralelo. Ela pediu para fazer em 22/10, não durante a live.
- 21/10 — Cupom ou reloginho da live cadastrado à mão (ela pediu para registrar): na Lojix de 21/10, a Farm soltou "20% OFF no alto verão com o cupom ALTO20, das 19h às 22h". Estava só na imagem do banner da home e no vídeo, e o banner levava ao app da live, então o detector de promoções não pegou. Uma tela ou comando para cadastrar cupom, percentual, peças (coleção) e horário, que a mensagem, a fila e o robô respeitem como um reloginho, e que o vigia de promoções não encerre.
- 21/10 — A Lojix automática na próxima live: seguir a timeline (a peça que aparece na tela vai para o grupo em minutos) e talvez o robô com as peças da Lojix, depois de saber se a venda pelo `?sc=6` conta para a vendedora. Base: a gravação de 21/10 em `.maestri/lojix-2026-10-21/` ([[2026-10-21-lojix-no-catalogo]]).
