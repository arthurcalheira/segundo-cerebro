# Estado

Reescrito em 16/10/2026, às 17h45, pelo Curador, depois do deploy do menu. Os dias estão em `30-diario/` ([[2026-10-15]], [[2026-10-16]]).

## Agora: no ar até o nome Vitrinista e a lista de grupos rápida (16/10, 20h35); próximo, o app instalável; cadastro fechado

- **No ar:** `master` e servidor em `6875662` (o Plano 12, a 5H e o menu no estilo do Claude), com o ok dela ("pode fazer o push, merge e deploy"). Deploy da 5H às 17h07 (migrações `0043` e `0044`) e do menu às 17h40, os dois com `EXIT=0` e backup antes. Conferido: containers saudáveis; `/versoes`, `/cookies` (cita o `vitrinista_lateral`), `/termos` e as páginas públicas 200; as telas novas (`/envio/...`, `/conta/...`) pedem login; `/regras`, `/conta` e `/ajustes` redirecionam certo; webhook responde; IA ligada; número principal conectado com o automático ligado. O painel por dentro (com login) ela olha.
- **No ar desde 16/10, 19h50 e 20h05** (com o ok dela, "pode fazer o push, merge e deploy das duas"): a conexão por **código de pareamento** (Tear, `3490e67`; no celular o código vem primeiro) e o painel adaptado à skill **apple-design** (Trama, `ab711db`, merge do pareamento feito pelo Curador: só o `STATE.md` conflitou; typecheck, testes da Conexão e `next build` conferidos no código junto). `master` e servidor em `ab711db`, backups antes, conferido no servidor. **Não rodados:** a suíte inteira do worker do pareamento (memória; os arquivos mexidos passaram) e a Evolution local; **falta ela ligar um celular pelo código numa vaga nova**. Da apple-design falta o quadro a quadro da Fila.
- **No ar desde 16/10, 20h35** (pedido dela, "pode fazer o deploy"): o aparelho conectado com o nome **Vitrinista** (QR pelo `evolution.env`; código por um ajuste no Baileys da Evolution, imagem própria `ferramenta-evolution` construída no deploy) e a **lista de grupos sem fotos** (286 grupos em 3,2 s no servidor; antes ~160 s). `master` e servidor em `5c1f206`. O primeiro `atualizar.sh` falhou (o script antigo tentou baixar a imagem da Evolution); o segundo passou. Os dois números voltaram sozinhos, sem QR. **Falta ela conferir** "Vitrinista" em Aparelhos conectados numa conexão nova (os números atuais seguem com o nome antigo até reconectar) e que o WhatsApp aceita o código com o nome.
- **Cobrança de teste:** a `sk_test_` do servidor tinha expirado (ela girou a de teste em 15/10); a nova foi posta no `.env` em 16/10, 17h38, conferida (conta certa, sete preços, webhook), worker reiniciado: "Stripe, modo teste", sete `ok`, a assinatura de teste dela relida. Ela confirmou que girou a `sk_live_` de produção (16/10).
- **Merge do menu com a 5H** (Trama, `6875662`): o "Encerrar a conta" ficou no fim de Conta > Dados e senha; a política de cookies cita quatro cookies, na versão de 16/10.
- **Stripe de produção montada** (produtos, sete preços, portal, e-mails e tentativas). Falta o webhook de produção, na abertura.
- **Terminais:** Tear e Trama abertos e parados, com as conversas. A worktree `claude codeerramenta-grupos-menu` pode ser apagada (o menu está no `master`), com o ok dela.
- **Nuvem:** nenhuma sessão rodando ([[sessoes-nuvem]]).

## Próximo

1. **Ela:** backup externo adiado por ela em 16/10 ("deixa pra fazer esse backup depois"; sugestão: Cloudflare R2, grátis até 10 GB; hoje as cópias ficam só no próprio servidor, e a Privacidade, item 8, continua marcada); testar uma resposta enviada pelo `contato@`; olhar o painel novo por dentro (menu, Conta, Encerrar a conta).
2. **Abrir o cadastro**, com o ok dela em cada passo: a `sk_live_` nova direto ao servidor, o webhook de produção, `CADASTRO_ABERTO=1` e tirar o `noindex` da página de vendas.
3. **Depois:** reduzir os registros de erro do programa de conexão (Privacidade, item 3.2); conta encerrada que não pode reusar o e-mail.
3a. **Ela testa:** conectar um celular pelo código de pareamento numa vaga nova, e olhar o painel com a apple-design no celular (gaveta, Fila, menus).
3b. **Próximo (Trama):** o painel como app instalável, com notificações ([[2026-10-16-painel-como-app]]): `.maestri/tarefa-pwa.md`.
4. **Antes de qualquer despacho:** ler a cota; vault sincronizado; registrar em [[sessoes-nuvem]], no diário e na nota "Agora". Ao delegar à noite, conferir com `maestri check` que a mensagem foi enviada.
5. **Sobras:** a rotina "Revisor do Plano 11" (pausada); o produto antigo "Assinatura Atelier" na Stripe de teste; a worktree do menu.

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
- O Curador entra no VPS por chave SSH e faz merge e deploy só com confirmação; uma autorização vale para o que foi dito. O modo automático do Claude Code pode barrar mesmo com o ok: ela sai do modo e aprova.

## O que aprendemos

Está escrito onde é usado: a skill `despachar-nuvem`, `maestri/papeis/curador.md` (deploy, servidor, Stripe) e `maestri/plano-workspace.md`. Novo em 14/10: na Stripe, o Pix ligado na configuração de formas de pagamento não quer dizer que ele funciona; o que manda é a capacidade `pix_payments` da conta, que só vem com a ativação. Chave da Anthropic de usuário (`sk-ant-usr-`) pede o cabeçalho de workspace; a do servidor tem que ser de workspace (`sk-ant-api03-`).
