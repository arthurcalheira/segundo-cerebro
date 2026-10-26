# Estado

## Agora

Atualizado em 26/10/2026, 1h45, pelo Gerente (noite com autonomia dela). Os dias estão em [[2026-10-23]], [[2026-10-24]] e [[2026-10-25]].

- **No ar, noite de 25 para 26/10** (`master` e servidor em `578845f4`): UX-023 (22h24), primeira leva (23h58: 013, 014, 020, 030, 011, 032 a 035), ajustes finos (00h25: 036, 037), segunda leva (01h19: 026, 027, 025, 028, 039, 005, 029, 038) e terceira leva (01h30: 024, 017, 040 a 043). Cada uma conferida pelo UX (as duas últimas por capturas: a `dev@local` da cópia não tem senha no Vault) e a segunda também pelo QA. Autonomia dada por ela: sobe o que o UX aprovar, menos pagamento.
- **No ar em 26/10, 5h28 (`ecc93386`), com o ok dela:** /assinar (UX-031 e os textos do cupom) e a página de vendas (UX-003, 004, com "Sem o limite de 30 peças por dia do Essencial" no Maison), pela cópia antes. Antes:
- **Prontos, esperando o ok dela:** `claude/ux-assinar` (UX-031 e os textos do cupom, QA aprovou na 4ª revisão; um deles corrige um texto errado que já está no ar: com cupom e sem teste, "Hoje: R$ 2.508" abaixo de "R$ 2.257,20 hoje"); `claude/ux-vendas` (UX-003, 004; UX aprovou por capturas em `OpenBot\Shared\ux-vendas\`; confirmar "Sem limite de peças por dia" no Maison).
- **Agente UX (25/10)** ([[2026-10-25-agente-ux]]): audita a produção com a conta "UX Teste" e a cópia de teste pela página de entrada nova. Fila em `10-vitrinista/ux/backlog.md`: 29 achados, 15 no ar (a 018 sem o link da multimarca), UX-023 na cópia, 8 com proposta aprovada ([[2026-10-25-propostas-de-ux]]), 003 a 005 e 028/029 abertos.
- **Troca do Maestri pelo OpenBot (25/10, manhã):** o Gerente, no OpenBot, assumiu o papel do Curador ([[2026-10-25-comando-pelo-openbot]]). Instruções e scripts adaptados em `openbot/`. Com o ok dela, criados os agentes Engenharia, QA e Infra e as cinco rotinas (`openbot/plano-workspace.md`), na seção "Vitrinista", e à tarde o UX. As rotinas do Maestri estão desligadas, e `maestri/` foi para `90-arquivo/maestri/`.
- **Antes** (`46b02579`, 25/10, 19h30): quatro deploys de UX em 25/10 (FAQ igual aos Termos e anual com o compromisso à vista; configuração e conexão; pacote de textos e toque; a entrada da cópia de teste pela web, com a guarda que recusa branch sem o portão). Antes, em `17300e9d` (25/10, 2h): a **mensagem por promoção** (um editor só: a mensagem geral, com a linha da promoção automática, e a mensagem própria de cada promoção; sem as abas por tipo nem a troca só do nome; [[2026-10-24-texto-de-cada-promocao]]). Antes, em `81a28d26` (24/10 noite): Dress To como a Farm (a "leve 2", frete, vitrine, banners pela IA; [[2026-10-23-dressto-promocoes]]); FARM Etc como loja própria, com categorias e lida pela home `/farm-etc` ([[2026-10-23-farm-etc-como-loja]]); seletor de lojas B; reenvio à mão da mesma peça no mesmo dia; o nome de cada promoção pela administração (`/admin/promocoes`) e pela vendedora (Mensagem, Promoções no ar), com {desconto} e {preço} e nome automático mais esperto ([[2026-10-24-texto-de-cada-promocao]]); conserto das mensagens vazias (a Evolution guarda as mensagens enviadas por 24 h; o Baileys não reenvia vazio). Lojix automática segue **desligada**.
- **Prontos, sem deploy:** lembrete por e-mail (`claude/lembrete-email`; espera o Zoho; a migração 0066 precisa ir para depois da 0069). Vídeo vertical com iPhone (`brag-vertical-iphone.mp4`, sem commit).
- **CI do GitHub parado por cobrança** desde 24/10: os construtores rodam as suítes no notebook.
- **Rotinas:** Abertura (9h), Vigia da nuvem (20 min), Fechamento (21h30), Conferente do site (1 h). No OpenBot desde 25/10: Abertura e Fechamento no Gerente; Vigia (agora a cada 30 min), Conferente e a nova Saúde do servidor (8h30) na Infra.
- **Construtores:** no Maestri eram Trama (worktree `-menu`) e Tear (`-vitrine`); sobram também o clone e a `-catalogo` (vídeo). No OpenBot: Engenharia (construtor, worktree `-menu`) e QA (revisor, `-vitrine`), falando com o Gerente por `openbot.send_message`. A memória do notebook (3,7 GB) não aguenta duas rodadas de teste nem render com teste.
- **Notebook:** disco com 3,6 GB livres em 25/10, às 11h, e 0 MB às 20h55 (o `.next` das worktrees cresce a cada rodada de testes); arquivo de paginação em 9,9 GB (reiniciar devolve).

## Próximo

0. **UX, com ela:** o ok para `claude/ux-assinar` e `claude/ux-vendas`; a senha da `dev@local` da cópia no Vault (para o UX conferir com dados); a UX-018 (nome e link do painel da multimarca); as duas promoções provisórias de 26/10, 00h30 (FARM e FARM Etc), se ainda estiverem no ar. Conferir na produção o que só foi visto por captura (toque, foco, "Salvo"). No 12x com cupom de mais de 12 meses, `installments.ts:8` e `:50` se contradizem sobre a renovação (QA). A UX-023 nas telas com falha de verdade (Histórico, Enviar agora, Conexão) só foi vista na cópia: a UX Teste da produção não tem número. Branches antigas precisam de rebase no `master` antes de ir à cópia.
1. **Troca para o OpenBot:** primeiro despacho à nuvem pelo OpenBot confere o caminho da janela de console (skill `despachar-nuvem`). Canal `#vitrinista` no OpenBot, quando ela criar. Telegram, GitHub em Connectors e a segunda conta Claude para a Engenharia: sugeridos, sem decisão.
2. **Com ela** ([[pendencias]], "De 24/10" e "De 23/10"): pagamento do GitHub; Zoho (plano e senha de app) e as 3 confirmações do lembrete; as 2 assinaturas pendentes; o exemplo de peça da assinante da FARM Etc (talvez já resolvido pelas categorias); confirmar com a Dani que as mensagens vazias pararam; ler [[revisar-decisoes-da-noite]].
3. **Técnico:** a Dani: aviso pessoal (texto pronto em [[2026-10-24]]) e, com o sim dela, `message:abas <email>` (primeiro sem `--aplicar`); os 8 pontos pequenos adiados da mensagem por promoção (no `STATE.md` do projeto), se ela quiser; renumerar a migração do lembrete por e-mail para depois da 0070; conferir a limpeza das mensagens guardadas e um reloginho novo com peças.
4. **Da fila de antes:** advogado (IA, Privacidade, Termos dos preços, cupom, atendimento); backup externo; reiniciar o notebook; ligar a Lojix automática na véspera da próxima live.

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
