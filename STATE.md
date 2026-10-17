# Estado

Atualizado em 17/10/2026, por volta das 17h20, pelo Curador, antes de ela fechar o Maestri. O dia está em [[2026-10-17]].

## Agora: lançado em 17/10; cadastro aberto, cobrança real

- **No ar** (`master` e servidor em `8a606cf`): cadastro aberto (`CADASTRO_ABERTO=1`), Stripe de produção (cartão e Pix; boleto ativo na conta, não oferecido), webhook de produção, os nove preços (com o Essencial anual), marca na tela de pagamento, página de vendas e `/app` no índice do Google; `/assinar` e a página de vendas abrindo no anual com o desconto; promoção sem reloginho (Liqui e Bazar da Farm, 80% da fila, lida a qualquer hora) com os botões "Promoções no ar" no Catálogo; estoque das peças da fila conferido a cada 15 min. As chaves de teste da Stripe ficaram guardadas no servidor, para a cópia de teste.
- **Estudo dos grupos feito em 17/10:** [[2026-10-17-mensagens-dos-grupos-de-vendedoras]] (o montador de mensagens pode ficar bem mais simples). Captura desligada e mensagens apagadas; o `deploy/evolution.env` do servidor voltou ao do repositório.
- **Cópia de teste no ar** em `teste.usevitrinista.com.br` ([[2026-10-17-copia-de-teste]]; `/opt/curadora-teste`, projeto `ferramenta-teste`, Stripe de teste, senha do site com ela). Refeita do zero em 17/10 com a demonstração completa (8 contas, 60 itens de fila, 9 números desconectados); cópia e `master` em `900110e`, produção em `ed46aa4` (a diferença é só o `teste:semear` e o guia). **Tear:** montador de mensagens simplificado ([[2026-10-17-montador-simplificado]]), spec aprovada, em execução. **Pedido dela: quando ele terminar e o resultado estiver conferido, limpar a conversa dele** (`/clear`, mandado ao terminal do Tear pela ferramenta PowerShell: `maestri ask "Tear" --raw` com `/clear` e Enter). **Trama:** parada.
- **Nuvem:** nenhuma sessão rodando.

## Próximo

1. **Montador de mensagens simplificado** (aprovado por ela em 17/10, [[2026-10-17-montador-simplificado]]): vai ao construtor logo depois da cópia de teste.
2. **Cópia de teste:** pronta. Todo deploy passa primeiro por ela (`./deploy/atualizar.sh <branch>` em `/opt/curadora-teste`); ela confere; depois merge e deploy na produção.
3. **Depois do montador, ao construtor, nesta ordem:** cortesia com data de fim (para o teste de 2 semanas das vendedoras; hoje ela dá a cortesia na Administração e tira à mão), registro de atualizações no painel para todas as assinantes (texto curto do Curador a cada deploy), cupom no pagamento, lembrete de pagamento abandonado (conferir se o e-mail da Stripe vale no Brasil).
4. **Ela:** backup externo (Cloudflare R2; agora com dinheiro real, pesa mais); ver no painel a Liqui e o Bazar na Fila; mandar as respostas das vendedoras do teste (sem nomes) para consolidar.
5. **Marketing:** as perguntas de 17/10 seguem sem resposta (quantas vendedoras a Fran cadastra por mês, se ela recomenda a Vitrinista no suporte, conversa com a dona da multimarca). Textos da abordagem por DM foram dados na conversa, não salvos.
6. **Sobras:** worktrees `ferramenta-grupos-menu` e `ferramenta-grupos-guia` (podem ser apagadas, com o ok dela); a rotina "Revisor do Plano 11" (pausada); o produto antigo "Assinatura Atelier" na Stripe de teste; dois arquivos de marca sem uso na Stripe de produção (ícone e logo da primeira tentativa).

## Ainda por fazer, sem data

- Da 5G: ver o cartão "Atendimento Atelier" quando houver a primeira conta no Atelier (o número de atendimento está no servidor como provisório, `ATENDIMENTO_WHATSAPP`, e não é escrito no vault); trocar pelo definitivo quando houver (linha no `.env` do servidor e `atualizar.sh`, com confirmação); olhar o log do worker no primeiro apagar real de um número, porque a resposta da Evolution ao apagar uma instância não foi confirmada.
- Com quem cuida do produto ([[pendencias]]): teste de envio do e-mail ([[email-do-dominio]]); backup externo; Google Analytics ou não; link do dashboard da multimarca; as 8 frases de chamada; INPI.
- Sem decisão, em [[ideias]]: 13 ideias de features e as sugestões de planos e página de vendas.
- Do plano do workspace: atualizar `maestri/configurar-no-windows.md` com as rotinas, o terminal do VPS e o portal.

## Como o vault funciona hoje

- **Pastas no notebook:** `C:\Users\arthu\claude code\segundo-cerebro` (este vault) ao lado do clone do projeto em `claude code\ferramenta grupos` (com espaço). A junction `claude code\ferramenta-grupos` aponta para ele.
- **Sync:** Obsidian Git 2.41.1, commit-and-sync a cada 10 min e pull ao abrir, mensagem `vault: {{date}}`. **Só roda com o Obsidian aberto.** Agentes locais não fazem commit. O repositório é público.
- **Maestri:** workspace "vitrinista", terminal do Curador com Maestro (no canvas, "Maestro"), rodando `claude -n curador --add-dir ../ferramenta-grupos --append-system-prompt-file maestri/papeis/curador.md`. No canvas: o terminal do Curador, o Construtor local "Tear" (conta "Claude Trial 1", aberto em `ferramenta-grupos`) e as notas "Agora" e "Próximos passos". **Em 14/10 a sessão do Curador abriu sem o papel carregado** (só leu `curador.md` quando ela perguntou): conferir na abertura.
- **Rotinas:** Abertura (9h), Vigia da nuvem (a cada 20 min, `maestri/scripts/vigia-nuvem.ps1`) e Fechamento (21h30). O vigia avisa a cada push, inclusive os do notebook.
- **Modelo do Curador:** em 14/10 a sessão abriu no Sonnet 5.5 e passou ao Opus 5.5 no meio.
- **Disco do notebook:** em 14/10 o C: chegou a 300 MB livres; o Tear apagou `apps/web/.next` e voltou a 5,6 GB. A suíte do worker leva cerca de 1 h e cai por falta de memória com outra coisa rodando junto.

## Decisões

- Vault separado do código; código e estado técnico só no projeto, e aqui o que não é código.
- O projeto é comandado pelo Curador no Maestri. O código é feito em sessões na nuvem ou, a pedido dela, por Construtores locais no Maestri (o "Tear", desde 13/10; a "Trama", na conta principal, desde 15/10, em worktree própria). Um construtor por vez, salvo pedido dela (em 15/10 rodaram dois, revezando a parte pesada): [[2026-10-10-comando-pelo-maestri]].
- Desenvolver na cópia local do projeto, só por pedido explícito na conversa; o pedido não cobre commit, merge, push nem deploy.
- Cobrança pela Stripe, com anual e 12x: [[2026-10-13-stripe-no-lugar-do-asaas]], [[2026-10-13-plano-anual-maison-49-atelier-99]], [[2026-10-14-anual-em-12x-com-compromisso]].
- Identidade A (desenho botânico) fechada e aplicada: [[2026-10-12-identidade-botanica]], [[2026-10-12-pagina-de-vendas-fechada]].
- A marca não cita a criadora: [[2026-10-11-criadora-sem-ligacao-publica]].
- Prazos e avisos dos documentos legais: [[2026-10-10-documentos-legais-prazos]].
- Lançamento em 17/10 (cadastro aberto, Stripe de produção, página no Google), com o ok dela em cada passo. Planos e landing: [[2026-10-17-essencial-anual-e-planos-na-landing]]; promoções: [[2026-10-17-promocao-sem-reloginho]].
- O Curador entra no VPS por chave SSH e faz merge e deploy só com confirmação; uma autorização vale para o que foi dito. O modo automático do Claude Code pode barrar mesmo com o ok: ela sai do modo e aprova.

## O que aprendemos

Novo em 17/10: o modo automático do Claude Code volta sozinho no meio da sessão e barra SSH, push e deploy mesmo com regra em `/permissions`; o `atualizar.sh` recusa arquivo do repositório alterado no servidor; a Stripe não deixa a própria conta mudar a marca pela API (só no painel); a Evolution só guarda mensagem com `DATABASE_SAVE_DATA_NEW_MESSAGE`. Está escrito onde é usado: a skill `despachar-nuvem`, `maestri/papeis/curador.md` (deploy, servidor, Stripe) e `maestri/plano-workspace.md`. Novo em 14/10: na Stripe, o Pix ligado na configuração de formas de pagamento não quer dizer que ele funciona; o que manda é a capacidade `pix_payments` da conta, que só vem com a ativação. Chave da Anthropic de usuário (`sk-ant-usr-`) pede o cabeçalho de workspace; a do servidor tem que ser de workspace (`sk-ant-api03-`).
