# Estado

Atualizado em 20/10/2026, 23h45, pelo Curador, no fechamento da sessão da noite (depois do deploy de 23h35). Os dias estão em [[2026-10-19]] e [[2026-10-20]].

## Agora

- **No ar** (`master` e servidor em `0a95c26`, deploy de 20/10 às 23h35): **histórico interno da IA** (migração 0051, tela `/admin/ia`, Privacidade de 19/10 no ar com os itens 4 e 7 a revisar pelo advogado); **cortesia com data de fim** (migração 0052, `account:plano <email> <plano> --ate AAAA-MM-DD` ou a Administração); **atendimento por WhatsApp para todas as contas** ([[2026-10-20-atendimento-para-todas]]); cadastro aberto, Stripe de produção, página de vendas no Google; **preços novos** (149,90, 249,90 e 349,90; anual 79, 117 e 150 por mês; as 4 assinantes de antes ficam na tabela de preço antiga até trocarem de plano); **configuração guiada** (migração 0050); **construtor de mensagem** (edição direto no exemplo, abas por tipo e loja); os **10% do código de vendedora** nas peças da Farm a preço cheio; código repetido e chamada que dá para apagar ou editar; a **linha do frete escrita pelo sistema** (posta uma vez nas mensagens gravadas sem frete: 15 linhas de 3 contas); Liqui, Bazar e reloginho da Farm e Bazar da Dress To como promoção, com catálogo e agenda a cada hora; IA sem limite por dia; "Robô pode enviar" some quando ela monta a fila; busca pela referência; "Conectar com código" (sem teste com celular).
- **Captura de mensagens desligada** em 20/10, mensagens apagadas e backup limpo; o estudo está em [[2026-10-20-ofertas-dos-grupos-de-vendedoras]]. Não precisa mais guardar o `deploy/evolution.env` nos deploys.
- **Construtores:** Trama e Tear livres. Nuvem: nenhuma sessão. As branches de junção (`claude/historico-ia-junta`, `claude/cortesia-junta`, `claude/atendimento-para-todos`) já estão no `master`.
- **Notebook:** disco com 4,9 GB livres (chegou a 60 MB em 20/10); o arquivo de paginação do Windows ainda ocupa cerca de 11 GB. Pedido a ela: reiniciar com nada rodando. Dependências dos worktrees do Tear só se apagam com o ok dela.

## Próximo

1. **Ela olha:** o botão "Falar no WhatsApp" na Conta > Atendimento da produção e diz se são outros números ou mais de um; `/admin/ia` com as primeiras chamadas de verdade; a cortesia com data numa conta (a dela, sem plano desde o lançamento, é candidata). Na produção, o Curador não leu o banco nem o `.env` depois do deploy (o modo automático barrou): as migrações 0051 e 0052 foram conferidas só na cópia.
2. **Ela confere também:** a primeira mensagem de verdade com os 10% do código num grupo; o "Conectar com código" com o celular; a assinante, o botão da Liqui.
3. **Com ela:** cortesia na conta do número dela (sem plano desde o lançamento); o advogado (textos da IA, Privacidade de 19/10, Termos com os preços novos: eles prometem 30 dias de aviso e a troca de plano vai ao preço novo na hora; o atendimento que deixou de ser só do Atelier, também na página de vendas); o registro de atualizações no painel para as assinantes; backup externo.
4. **Sobras:** a branch local `claude/montador-simplificado` no clone; worktrees velhas (`ferramenta-grupos-precos`, `-robo`, `-guiada`) com o trabalho já no `master`; a rotina "Estudo dos grupos" (o estudo foi feito à mão) e a "Revisor do Plano 11" (pausada); o `dev:demo --12x <parcelas>` que recusa qualquer número (só na demonstração).

## Ainda por fazer, sem data

- Da 5G: o cartão "Atendimento" aparece para todas desde 20/10 (o número de atendimento está no servidor como provisório, `ATENDIMENTO_WHATSAPP`, e não é escrito no vault); trocar pelo definitivo quando houver (linha no `.env` do servidor e `atualizar.sh`, com confirmação); olhar o log do worker no primeiro apagar real de um número, porque a resposta da Evolution ao apagar uma instância não foi confirmada.
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

- 20/10: [[2026-10-20-atendimento-para-todas]], [[2026-10-20-precos-novos]], [[2026-10-20-edicao-no-exemplo]], [[2026-10-20-codigo-da-farm-na-mensagem]].
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
