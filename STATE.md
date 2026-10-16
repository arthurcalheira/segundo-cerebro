# Estado

Reescrito em 16/10/2026, às 16h, pelo Curador, no fechamento. Os dias estão em `30-diario/` ([[2026-10-15]], [[2026-10-16]]).

## Agora: Plano 12 no ar (Stripe em teste, cadastro fechado); a 5H e o menu novo prontos em branches, sem push

- **No ar desde 15/10, 22h36:** o Plano 12 inteiro (12A a 12E: Stripe, anual, 12x, Pix só no anual à vista, lacunas legais), `master` e servidor em `c03ec45`, com a Stripe em modo de teste. Conferido depois: worker "Stripe, modo teste", sete preços `ok`, webhook de teste, IA ligada, número principal conectado. Ela assinou com o cartão de teste e funcionou. As assinaturas de teste do Asaas foram apagadas.
- **Cadastro fechado** (`CADASTRO_ABERTO` ausente), página de vendas com `noindex`.
- **Plano 5H pronto** (Tear, conta "Claude Trial 1"): branch `claude/plano-5h-documentos` (11 commits de `c03ec45` a `8892bb7`), **sem push**. Limpezas automáticas (12 meses e 180 dias), devolução do Pix depois de 90 dias pelo suporte, "Encerrar a conta", encerramento automático 6 meses depois do fim do plano e exclusão em 5 anos, `/versoes` pública, documentos na versão de 16/10. Migrações `0043` e `0044`. Testes inteiros, typecheck, `next build` e navegador ok. Ficam marcados nos documentos: o backup externo e a redução dos registros de erro. Limite conhecido: quem encerrou a conta não cria outra com o mesmo e-mail.
- **Menu no estilo do Claude pronto** (Trama, conta principal): branch `claude/menu-estilo-claude` na worktree `claude codeerramenta-grupos-menu` (11 commits até `38326e1`), **sem push**. Spec aprovada pelo Curador em nome dela ([[2026-10-15-menu-estilo-claude]]). Suíte da web, typecheck, `next build` e navegador ok.
- **Stripe de produção montada pelo Curador** (15/10): três produtos, sete preços, portal; ela repetiu os e-mails e as tentativas. Falta o webhook de produção, criado na abertura com a `sk_live_` nova.
- **Terminais:** o Tear está aberto, parado, com a conversa da 5H. A Trama foi trocada por um terminal de shell (para liberar memória); a conversa dela pode ser retomada com `maestri recall`. **De madrugada, a conversa do Tear foi para o "segundo plano" do Claude Code e parou** (o pedido de vez dele e o aviso do Curador não chegaram): ao delegar à noite, conferir com `maestri check` se a mensagem foi enviada (ficou uma vez digitada sem Enter).
- **Memória do notebook:** 3,6 GB; com dois construtores e uma atualização do Windows (AppXSvc), chegou a 30 MB livres e derrubou suítes. Duas construções ao mesmo tempo só com a parte pesada revezada pelo Curador.
- **Nuvem:** nenhuma sessão rodando ([[sessoes-nuvem]]).

## Próximo

1. **Push das duas branches**, com o ok dela.
2. **Merge e deploy, um de cada vez, com o ok dela:** primeiro a 5H (migrações `0043` e `0044`), depois o menu. No merge do menu: o "Encerrar a conta" da 5H vira item do menu da conta (a Conta virou 5 telas), e a política de cookies passa a citar quatro cookies (sessão, número, tema e `vitrinista_lateral`). Desvio do menu: o `PLAN_HREF` continua `/conta#plano` (o redirecionamento cobre).
3. **Ela:** backup externo (sugestão do Curador: Cloudflare R2, grátis até 10 GB); teste de uma resposta enviada pelo `contato@`.
4. **Abrir o cadastro**, com o ok dela em cada passo: a `sk_live_` nova (direto ao servidor), o webhook de produção, a troca das chaves, `CADASTRO_ABERTO=1` e tirar o `noindex` da página de vendas.
5. **Depois:** a redução dos registros de erro do programa de conexão (Privacidade, item 3.2); o e-mail de conta encerrada que não pode ser reusado.
6. **Antes de qualquer despacho:** ler a cota; vault sincronizado; registrar em [[sessoes-nuvem]], no diário e na nota "Agora". Merge e deploy pedem confirmação nova a cada vez.
7. **Sobras:** a rotina "Revisor do Plano 11" está pausada e não serve mais (apagar pede o ok dela); o produto antigo "Assinatura Atelier" na conta de teste da Stripe; a worktree `ferramenta-grupos-menu` (apagar depois do merge do menu).


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
