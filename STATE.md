# Estado

Atualizado em 20/10/2026, de madrugada, pelo Curador, no fechamento antes de ela limpar a conversa. Os dias estão em [[2026-10-19]] e [[2026-10-20]].

## Agora

- **No ar** (`master` e servidor em `9107abe`): cadastro aberto, Stripe de produção, página de vendas no Google; Liqui e Bazar da Farm como promoção (a Liqui por cupom de volta ao filtro em 19/10); busca do Catálogo pela referência da peça; "Robô pode enviar" desligado quando ela monta a fila; montador pela IA **sem limite por dia**, com as instruções em cache, o tempo no log e o **ajuste como edição** da proposta atual (avisa o que não dá para fazer); "Conectar com código" no navegador padrão do Baileys (sem teste com celular).
- **Captura de mensagens ligada na produção** desde 19/10, 19h26, para o estudo de 5 grupos (rotina "Estudo dos grupos", 20/10 às 16h). Em todo deploy até lá: guardar de lado o `deploy/evolution.env` do servidor e repor depois (os deploys de 19/10 rodaram desacoplados da conexão, com `nohup`, e repuseram).
- **Cópia de teste** na branch `claude/configuracao-guiada` (`0135696`, migração 0049), esperando ela conferir no celular. Ela não tem a IA sem limite nem o ajuste como edição.
- **Prontas, sem merge** (cada uma no seu worktree):
  - Configuração guiada ([[2026-10-19-configuracao-guiada]]; Tear, `0135696`, `ferramenta-grupos-guiada`).
  - Cortesia com data de fim (Tear, `4f547bb`, `ferramenta-grupos-cortesia`, migração 0051; as 3 perguntas com as recomendações dele, que ela pode mudar; faltam as suítes inteiras do banco e do worker, o `next build` e a primeira cobrança com data no checkout de teste da Stripe).
  - Histórico interno da IA (Trama, `ead9a81`, `ferramenta-grupos-historico-ia`, migração 0050, tela `/admin/ia`, Privacidade de 19/10 com os itens 4 e 7 a revisar pelo advogado; checagem de tipos de todos os pacotes ok; faltam as suítes inteiras do banco e do worker, o `next build` e o navegador).
  - **Na junção:** as migrações 0049, 0050 e 0051 foram feitas em paralelo: acertar o `prevId` dos snapshots e o journal nessa ordem.
- **Na fila, sem commit:** o "Robô pode enviar" sumir quando ela monta a fila (worktree `ferramenta-grupos-robo`, branch `claude/robo-some`; checagem de tipos ok, a suíte da web não rodou).
- **Notebook sem disco:** cerca de 0,7 GB livres; o arquivo de paginação do Windows cresceu para 11,2 GB com a memória baixa. As suítes do banco caem. Pedido a ela: reiniciar e o ok para apagar as dependências dos worktrees do Tear (cerca de 1,1 GB).
- **Construtores:** Tear e Trama parados, com as entregas acima. Nuvem: nenhuma sessão.

## Próximo

1. **20/10, 16h:** o relatório dos 5 grupos pela rotina; depois, com o ok dela, desligar a captura e apagar as mensagens.
2. **Liberar o disco** (reinício dela; dependências dos worktrees do Tear com o ok dela) e então as verificações que faltam: histórico da IA (Trama) e cortesia (Tear), uma por vez.
3. **Ela confere:** a configuração guiada na cópia; a assinante repetir o espaçamento na Mensagem e o botão da Liqui; o "Conectar com código" com o celular.
4. **Merge e deploy, com o ok dela, um de cada vez pela cópia:** configuração guiada, histórico da IA, cortesia, o "Robô pode enviar" sumir.
5. **Com ela:** cortesia na conta do número dela (sem plano desde o lançamento); a revisão do advogado (textos da IA, Privacidade de 19/10); o que mudar no modo avançado de editar mensagens; o registro de atualizações no painel para as assinantes; backup externo.
6. **Sobras:** a pasta vazia `ferramenta-grupos-menu` (o terminal da Trama segura; sai quando ele fechar); a branch local `claude/montador-simplificado` no clone; a rotina "Revisor do Plano 11" (pausada); o `dev:demo --12x <parcelas>` que recusa qualquer número (achado do Tear, só na demonstração).

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
