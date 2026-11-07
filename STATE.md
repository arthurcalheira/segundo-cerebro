# Estado

## Agora

Atualizado em 06/11/2026, à noite, pelo Gerente (no OpenBot da VPS desde 27/10). O dia está em [[2026-11-06]]; antes, [[2026-11-05]] e [[2026-11-04]].

- **No ar desde 06/11, ~19h30** (`3400896f`, quatro deploys no dia): stories automáticos com fila por intervalo, modelo por loja e aba "Promoções"; lojas novas só nos Stories; leitura interna dos grupos (desligada) e atalho do iPhone ([[2026-11-06-stories-lojas-novas-e-grupos]]). Antes: promoção à mão "Sem cupom" ([[2026-11-05-promocao-sem-cupom]]).
- **Deploy:** sem esperar a meia-noite; o que ela aprova sobe quando o QA aprova, depois da cópia de teste.
- **Promoções à mão no ar:** "🎄 Achadinhos de Natal FARM" e "Zumzum 50% OFF", até 12/11; a rotina "Estender Achadinhos de Natal" (quintas, 9h) leva a primeira até 24/12.
- **Dani:** "só hoje!" e APP25 fora dos textos de aba; falta a geral e a Vitrine dela.
- **Stories automáticos (uso interno):** ligados só para a conta dela; publicar e ManyChat seguem desligados. Pronta para subir, esperando o ok dela: `claude/integracao-1106e` (`2bfb8f90`; resposta no Direct pelo texto da criadora e a escuta do Instagram, que sobe desligada). Na fila do QA: `claude/stories-aviso-codigo` (`2bfbc540`). Nada publica sem o ok dela na hora.
- **Lojas novas (C&A, Renner, Riachuelo):** no ar, só nos Stories da conta dela, com os códigos cadastrados. Renner e Riachuelo sem feed na Awin; esperando o dev da criadora.
- **Agentes (OpenBot da VPS):** Gerente, Engenharia, Engenharia 2, QA, Infra e UX, na seção "Vitrinista". Uma mensagem por agente por vez. Uma suíte de teste por vez no servidor. O UX está parado (o navegador único está na conta de administração dela). CI do GitHub parado por cobrança desde 24/10.

## Próximo

0. **Com ela:** ok para subir a `claude/integracao-1106e`; depois, QA e deploy da `claude/stories-aviso-codigo`. Em seguida ([[pendencias]], "De 06/11"): login do Telegram e a vaga da leitura dos grupos; token e instalação do atalho; painel da Meta para a escuta; ManyChat apontado para a produção (publicar só com o ok dela).
1. **Com ela** ([[pendencias]], "De 05/11"): Awin (feeds da Renner e da Riachuelo); os 10% nas vitrines; a geral e a Vitrine da Dani; o nome da criadora nas versões antigas dos Termos e da Privacidade.
2. **Gerente:** ver uma mensagem real da Dani (preço e um título só); conferir na quinta, 12/11, que a rotina estendeu os Achadinhos; conferir no ManyChat a data da primeira cobrança do Pro (no Essential era 18/11) e lembrá-la antes.
3. **Com ela, de 02/11:** testar o FOGUETES3 em `/assinar` e mandar o texto; escolher o login do UX.
4. **Gerente, de 02/11:** desde quando a chave da Stripe estava vencida e se alguém tentou assinar.
5. **Com ela, de antes:** horário para a troca da chave interna do painel; ler os Termos de 27/10; tabela 3 e Black Friday.
6. **UX:** telas novas no celular e a varredura semanal, quando houver login.
7. **Depois:** as ressalvas baixas do QA, a sync da Lojix no reinício e a `claude/teste-guarda-portao` num pacote só, antes de 01/12.
8. **Com ela** ([[pendencias]]): GitHub; Zoho e o lembrete; as 2 assinaturas pendentes; a senha da `dev@local` no Vault; a UX-018; [[revisar-decisoes-da-noite]]; advogado; backup externo.

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

- 06/11: [[2026-11-06-stories-lojas-novas-e-grupos]].
- 04/11: [[2026-11-04-mensagem-da-lojix]].
- 03/11: [[2026-11-03-fabula-como-loja]].
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
