# Estado

## Agora

Atualizado em 28/10/2026, 21h30, pelo Gerente (no OpenBot da VPS desde 27/10). O dia está em [[2026-10-28]]; antes, [[2026-10-27]] e [[2026-10-26]].

- **No ar desde 28/10, 00h05** (deploy da meia-noite, `2afb507e`): os planos novos com os limites permanentes e os preços de Black Friday até 30/11 ([[2026-10-27-planos-black-friday]]), o visual da Black Friday, as promoções mais certas com os ajustes ([[2026-10-27-promocoes-mais-certas]]), a leitura do site (VTEX), o deploy mais seguro e a troca automática de chave. Migração `0073`. Termos e Termo de compromisso na versão de 27/10. O DANI3 já pode ser divulgado.
- **Fila do projeto:** nada em curso nem pronto para subir. Esperam: `claude/teste-guarda-portao` (o QA), as ressalvas baixas do QA (nome automático com "no pix", frase e leitura de tela da Black Friday) e o lembrete por e-mail (`claude/lembrete-email`; espera o Zoho; renumerar a migração).
- **Agentes (OpenBot da VPS):** Gerente, Engenharia, Engenharia 2, QA, Infra e UX, na seção "Vitrinista". Uma mensagem por agente por vez (pedido dela em 27/10). Uma suíte de teste por vez no servidor.
- Lojix automática segue **desligada**. CI do GitHub parado por cobrança desde 24/10.

## Próximo

0. **Com ela:** horário para a troca da chave interna do painel (não aconteceu em 28/10); ler os Termos de 27/10, já no ar; decidir se as assinantes da tabela 3 passam à Black Friday ([[pendencias]], "De 28/10").
1. **UX:** a lista das telas que mudaram no deploy de 28/10 (página de vendas, `/assinar`, planos e limites), no celular.
2. **Depois:** as ressalvas baixas e a `claude/teste-guarda-portao` num pacote só, com o QA, antes de 01/12 (a virada da Black Friday).
3. **Com ela** ([[pendencias]]): pagamento do GitHub; Zoho e o lembrete; as 2 assinaturas pendentes; a senha da `dev@local` da cópia no Vault; a UX-018 (painel da multimarca); ler [[revisar-decisoes-da-noite]].
4. **Da fila de antes:** advogado (IA, Privacidade, Termos dos preços, cupom, atendimento); backup externo; ligar a Lojix automática na véspera da próxima live.

## Ainda por fazer, sem data

- Da 5G: o cartão "Atendimento" aparece para todas desde 20/10 (o número de atendimento está no servidor como provisório, `ATENDIMENTO_WHATSAPP`, e não é escrito no vault); trocar pelo definitivo quando houver (linha no `.env` do servidor e `atualizar.sh`, com confirmação); olhar o log do worker no primeiro apagar real de um número, porque a resposta da Evolution ao apagar uma instância não foi confirmada.
- Com quem cuida do produto ([[pendencias]]): teste de envio do e-mail ([[email-do-dominio]]); backup externo; Google Analytics ou não; link do dashboard da multimarca; as 8 frases de chamada; INPI.
- Sem decisão, em [[ideias]]: 13 ideias de features e as sugestões de planos e página de vendas.

## Como o vault funciona hoje

- **Pastas no notebook:** `C:\Users\arthu\claude code\segundo-cerebro` (este vault) ao lado do clone do projeto em `claude code\ferramenta grupos` (com espaço). A junction `claude code\ferramenta-grupos` aponta para ele.
- **Sync:** Obsidian Git 2.41.1, commit-and-sync a cada 10 min e pull ao abrir, mensagem `vault: {{date}}`. **Só roda com o Obsidian aberto.** Agentes locais não fazem commit. O repositório é público.
- **OpenBot (desde 25/10):** o agente Gerente, com pasta própria fora do vault; o papel (`openbot/papeis/gerente.md`) não carrega sozinho, e a memória essencial do Gerente aponta para ele. Construtores, rotinas e o caminho da nuvem em `openbot/plano-workspace.md`. Scripts em `openbot/scripts/`, estado em `.openbot/` (fora do git, com a linha do ssh).
- **Maestri (até 25/10, desligado):** o que valia lá (papéis, scripts com `--pre-run`, plano do workspace, configuração) está em `90-arquivo/maestri/`.
- **Disco do notebook:** em 14/10 o C: chegou a 300 MB livres; o Tear apagou `apps/web/.next` e voltou a 5,6 GB. A suíte do worker leva cerca de 1 h e cai por falta de memória com outra coisa rodando junto.

## Decisões

- 27/10: [[2026-10-27-promocoes-mais-certas]], [[2026-10-27-planos-black-friday]].
- 25/10: [[2026-10-25-comando-pelo-openbot]], [[2026-10-25-agente-ux]], [[2026-10-25-propostas-de-ux]].
- 24/10: [[2026-10-24-texto-de-cada-promocao]].
- 23/10: [[2026-10-23-farm-etc-no-catalogo]], [[2026-10-23-anual-com-desconto-menor]], [[2026-10-23-dressto-promocoes]], [[2026-10-23-farm-etc-como-loja]].
- 22/10: [[2026-10-22-conferente-do-site]]; as da noite de 22 para 23/10 em [[revisar-decisoes-da-noite]], para ela revisar.
- 21/10: [[2026-10-21-edicao-livre]].
- 20/10: [[2026-10-20-atendimento-para-todas]], [[2026-10-20-precos-novos]], [[2026-10-20-edicao-no-exemplo]], [[2026-10-20-codigo-da-farm-na-mensagem]].
- Vault separado do código; código e estado técnico só no projeto, e aqui o que não é código.
- O projeto é comandado pelo Gerente no OpenBot desde 25/10 (antes, pelo Curador no Maestri). O código é feito em sessões na nuvem ou, a pedido dela, por construtores locais em worktree própria (no Maestri, o "Tear" desde 13/10 e a "Trama" desde 15/10). Um construtor por vez, salvo pedido dela (em 15/10 rodaram dois, revezando a parte pesada): [[2026-10-10-comando-pelo-maestri]], [[2026-10-25-comando-pelo-openbot]].
- Desenvolver na cópia local do projeto, só por pedido explícito na conversa; o pedido não cobre commit, merge, push nem deploy.
- Cobrança pela Stripe, com anual e 12x: [[2026-10-13-stripe-no-lugar-do-asaas]], [[2026-10-13-plano-anual-maison-49-atelier-99]], [[2026-10-14-anual-em-12x-com-compromisso]].
- Identidade A (desenho botânico) fechada e aplicada: [[2026-10-12-identidade-botanica]], [[2026-10-12-pagina-de-vendas-fechada]].
- A marca não cita a criadora: [[2026-10-11-criadora-sem-ligacao-publica]].
- Prazos e avisos dos documentos legais: [[2026-10-10-documentos-legais-prazos]].
- Lançamento em 17/10 (cadastro aberto, Stripe de produção, página no Google), com o ok dela em cada passo. Planos e landing: [[2026-10-17-essencial-anual-e-planos-na-landing]]; promoções: [[2026-10-17-promocao-sem-reloginho]].
- O Gerente entra no VPS por chave SSH e faz merge e deploy só com confirmação; uma autorização vale para o que foi dito. Se uma aprovação do OpenBot ou do Claude Code barrar mesmo com o ok, ela aprova o pedido.

## O que aprendemos

Novo em 17/10: o modo automático do Claude Code volta sozinho no meio da sessão e barra SSH, push e deploy mesmo com regra em `/permissions`; o `atualizar.sh` recusa arquivo do repositório alterado no servidor; a Stripe não deixa a própria conta mudar a marca pela API (só no painel); a Evolution só guarda mensagem com `DATABASE_SAVE_DATA_NEW_MESSAGE`. Está escrito onde é usado: a skill `despachar-nuvem`, `openbot/papeis/gerente.md` (deploy, servidor, Stripe) e `90-arquivo/maestri/plano-workspace.md`. Novo em 14/10: na Stripe, o Pix ligado na configuração de formas de pagamento não quer dizer que ele funciona; o que manda é a capacidade `pix_payments` da conta, que só vem com a ativação. Chave da Anthropic de usuário (`sk-ant-usr-`) pede o cabeçalho de workspace; a do servidor tem que ser de workspace (`sk-ant-api03-`).
