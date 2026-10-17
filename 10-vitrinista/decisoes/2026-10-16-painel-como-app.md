---
tipo: decisao
data: 2026-10-16
status: valendo
fonte: conversa com o Curador, 16/10/2026 ("ja inclui as notificações. a trama depois")
---
# Painel instalável como app, com notificações

**Decisão:** o painel vira um app instalável no celular (PWA): manifesto com nome, ícones (192 e 512 px), cor e abertura em tela cheia no Início; botão "Instalar o app" no Android (janela do próprio sistema); no iPhone, uma tela com o passo a passo (Compartilhar → "Adicionar à Tela de Início"), só para quem não instalou e dispensável; tela própria "sem internet". **Com notificações no celular já neste plano** (por exemplo, número desconectado ou envio pausado); no iPhone, só com o app instalado.

**Por quê:** pedido dela. A recomendação do Curador era deixar as notificações para um plano próprio; ela quis junto.

**Os avisos (16/10, à noite, "tudo tem q ter notificação menos g"):** número desconectado; envio pausado por falhas seguidas; fila do dia sem peças ou loja parada por falta de código (no máximo um por dia); pagamento (cartão recusado, parcela do 12x não paga, renovação do Pix vencendo); fim do teste em 2 dias; teto de 30 peças do Essencial atingido; reloginho ou promoção no ar numa loja (no máximo um por loja por dia); e, só para a administradora, assinatura nova, cancelamento e pagamento de assinante que falhou. **Fora:** o resumo do dia. Como a Trama recomendou: para a dona da conta, em cada aparelho ativado, dizendo qual número; um aviso quando o problema começa, sem repetir, no máximo um por tipo e número a cada 6 h; desconexão e pausa só nas horas de atuação dela (o da madrugada sai na abertura), pagamento e teste das 9h às 21h; tela "Notificações" no menu da conta com uma chave por aviso, todos ligados; o pedido de permissão só ao tocar "Ativar notificações" (em Conta > Notificações e num cartão no Início depois do primeiro número conectado); tocar abre a tela que resolve; texto curto na tela bloqueada; sem aviso por e-mail neste plano.

**Spec (17/10):** da Trama (`e51ca66`, `ferramenta-grupos/docs/superpowers/specs/2026-10-17-painel-como-app-design.md`, ícones pelo Sonnet), aprovada pelo Curador em nome dela, com as 6 decisões como a Trama recomendou: a Privacidade cita o serviço de push do navegador (Google, Apple, Mozilla); /instalar e o cartão no Início para o iPhone; "Mandar um teste"; o favicon e o ícone do iPhone trocados pelo símbolo botânico (ainda eram os da identidade antiga); o badge com o traço mais grosso; o desenho a ~63% no ícone maskable.

**Onde entrou:** no ar desde 16/10, 22h50 (`2307080`, migração `0045`, chaves VAPID no servidor). Antes: vai para a Trama depois da adaptação do painel à skill `apple-design` (as duas mexem no menu da conta): `.maestri/tarefa-pwa.md`. Quais avisos mandar, para quem e com que frequência ficam para o brainstorming com ela.

**Alternativas descartadas:** só a instalação agora e as notificações depois; o Tear em paralelo.
