# Estado

Reescrito em 13/10/2026, à noite, pelo Curador, e fechado às 20h11. Os dias estão em `30-diario/` ([[2026-10-12]], [[2026-10-13]]).

## Agora: tudo no ar e conferido por ela; falta decidir por onde cobrar

- **No ar:** o painel em `https://painel.usevitrinista.com.br` e a página de vendas em `usevitrinista.com.br`, na identidade A; o Plano 11 (montador da mensagem e copy por IA, com a IA desligada) e as correções da revisão dele; os onze ajustes de UX de 13/10 ([[2026-10-13-ajustes-de-ux-do-painel]]). Servidor em `928790e`, conferido pelo Curador depois de cada deploy; **ela olhou o painel por dentro em 13/10 à noite: "tudo certo com o painel".** Não dito por ela: se viu um envio sair depois dos deploys.
- **Repositório do projeto:** `master` em `1589929` no GitHub e na cópia local (um commit de documentação à frente do servidor; sem deploy pendente). A cópia local está no `master`, limpa; sobraram branches locais já contidas nele (`ajustes-ux-13-10` e as de 12/10). `docs/marca/estudos-identidade/` e `estudos-logo/` seguem sem versionar.
- **Cadastro fechado** (`CADASTRO_ABERTO` ausente); a página está com `noindex`. Cobrança no sandbox do Asaas.
- **IA das mensagens:** código pronto e em produção, desligada por falta da chave. Para ligar: crédito no Claude Console, `ANTHROPIC_API_KEY` no `.env` do servidor e `atualizar.sh` (como em `ferramenta-grupos/STATE.md`, "Para ligar a IA depois"), com o ok dela, e antes os documentos legais ([[pendencias]]). Os cartões do Maison e do Atelier já dizem "Mensagem escrita por IA no seu tom" (decisão dela): a chave precisa entrar antes de abrir o cadastro. Decisão e o que a spec fixou: [[2026-10-13-montador-de-mensagem-com-a-copy-por-ia]].
- **Planos reformulados em 13/10, à noite (nada disso entrou no código):** cobrança pela Stripe, só no cartão ([[2026-10-13-stripe-no-lugar-do-asaas]]); anual do Maison a R$ 49 e do Atelier a R$ 99 por mês, cobrados uma vez por ano, preço fixo ([[2026-10-13-plano-anual-maison-49-atelier-99]]); teste de 7 dias com recursos do Maison para todos ([[2026-10-13-teste-com-maison-para-todos]]); cancelar pelo site só desliga a renovação, com pesquisa de motivo obrigatória, botão de desistir nos 7 dias e reembolso pelo suporte ([[2026-10-13-cancelamento-e-reembolso]]); Essencial com teto de 30 peças por dia ([[2026-10-13-essencial-com-teto-de-30-pecas]]). O Essencial é isca para o Maison, não plano acessível. Não confirmado: parcelamento em 12x na Stripe; se "sem devolução depois de 7 dias" vale no anual (advogado).
- **Cobrança, decidida em 13/10 (Stripe); o contexto:** no Asaas com o CPF dela, o nome dela aparece nos e-mails, na fatura e no Pix; abrir empresa não é viável agora. A Stripe aceita pessoa física e, no teste de 13/10, recibo e fatura mostraram só o nome público da conta; mas Pix e boleto não estão disponíveis na conta de teste dela (só cartão), o cartão é liberado em 30 dias, a taxa é maior e a troca pede refazer a cobrança no código. Tudo em [[asaas-nome-nas-cobrancas]].
- **Sandbox do Asaas (12/10):** atraso, pagar atrasada e subir de plano passaram; o estorno passou só no Pix ([[asaas-estorno-pix-e-boleto]]). A conta de teste ficou cancelada, valendo até 09/11.
- **Nuvem:** nenhuma sessão rodando. As quatro de 13/10 estão em [[sessoes-nuvem]].
- **Cota:** 96% da semana às 17h de 13/10; zera na sexta, 16/10, às 16h. Lê-se pelo `/usage` num terminal recrutado (skill `despachar-nuvem`).
- **Não conferido:** no navegador, a troca de loja no Essencial, o "Abrir catálogo" com a fila vazia e a Fila sem o escritor de IA; a data do último backup depois de 11/10; o estado do número `close` no servidor.
- **Desatualizado:** o `BRIEF.md` da página de vendas (`ferramenta-grupos/docs/marca/identidade-botanica/landing/`) é de 12/10 à tarde.

## Próximo

1. **Escrever a tarefa do Construtor para a reformulação dos planos** (Stripe, anual, teste com Maison, cancelamento com pesquisa, teto do Essencial), num plano de código só, para depois de a cota zerar (16/10, 16h); despacho com o ok dela. Antes do código, vale a recomendação antiga do Curador: ativar a conta da Stripe antes de qualquer código, com o `contato@` do domínio como e-mail de suporte e um endereço que não seja o de casa, e ver se o Pix é liberado. Se a Stripe for o caminho, é um plano de código novo (refazer a cobrança do 5E, as trocas de plano, atraso, estorno e avisos), para um Construtor depois de a cota zerar. Se ficar no Asaas: conta de produção com a chave Pix criada antes da primeira assinatura, repetir o estorno com assinatura Pix e de cartão, a autorização de ação crítica e a decisão sobre o estorno que falha no meio.
2. **Ela, sem depender do item 1:** crédito no Claude Console e a chave da Anthropic; advogado (o que a IA exige dos documentos, as seis lacunas, o que a 5G criou, os Termos que identificam pessoa física); onde fica o backup externo (não existe); DKIM no Zoho.
3. **Abrir o cadastro**, quando o resto estiver feito: troca para a produção (passo 14 de `ferramenta-grupos/docs/implantacao.md`, se ficar no Asaas) e `CADASTRO_ABERTO=1`, cada passo com o ok dela. A indexação segue com a recomendação, não confirmada por ela, de manter o `noindex` até abrir.
4. **Documentos legais da 5H:** `.maestri/tarefa-5h.md` não pode ser despachada como está (foi escrita quando a 5H incluía a página de vendas). Reescrever só com os documentos legais e o que deles vira código; o conteúdo está em [[pendencias]] e [[2026-10-10-documentos-legais-prazos]].
5. **Antes de qualquer despacho:** ler a cota; vault sincronizado (`git status` limpo e `git log origin/claude/magical-fermi-mfb4ah..HEAD` vazio); cópia local do projeto no `master` atual; um construtor por vez; registrar em [[sessoes-nuvem]], no diário e na nota "Agora". Ela não quer ser perguntada pelo Construtor: a tarefa leva as escolhas escritas e ele gera o que faltar para ela aprovar na spec.
6. **Merge e deploy pedem confirmação nova** a cada vez. As de 13/10 já foram usadas.
7. **Sobras no Maestri e fora dele:** a rotina "Revisor do Plano 11" está pausada e não serve mais (apagar pede o ok dela); as outras três contas do Claude dela podem ser cadastradas no Maestri para revezar quando a cota acabar (ela cadastra; o Curador troca com `maestri recruit --replace ... --account`).

## Ainda por fazer, sem data

- Da 5G: ver o cartão "Atendimento Atelier" quando houver a primeira conta no Atelier (o número de atendimento está no servidor como provisório, `ATENDIMENTO_WHATSAPP`, e não é escrito no vault); trocar pelo definitivo quando houver (linha no `.env` do servidor e `atualizar.sh`, com confirmação); olhar o log do worker no primeiro apagar real de um número, porque a resposta da Evolution ao apagar uma instância não foi confirmada.
- Com quem cuida do produto ([[pendencias]]): DKIM no Zoho ([[email-do-dominio]]); retorno do advogado; backup externo; Google Analytics ou não; link do dashboard da multimarca; as 8 frases de chamada; INPI.
- Sem decisão, em [[ideias]]: 13 ideias de features e as sugestões de planos e página de vendas.
- Do plano do workspace: atualizar `maestri/configurar-no-windows.md` com as rotinas, o terminal do VPS e o portal.

## Como o vault funciona hoje

- **Pastas no notebook:** `C:\Users\arthu\claude code\segundo-cerebro` (este vault) ao lado do clone do projeto em `claude code\ferramenta grupos` (com espaço). A junction `claude code\ferramenta-grupos` aponta para ele.
- **Sync:** Obsidian Git 2.41.1, commit-and-sync a cada 10 min e pull ao abrir, mensagem `vault: {{date}}`. **Só roda com o Obsidian aberto.** Agentes locais não fazem commit. O repositório é público.
- **Maestri:** workspace "vitrinista", terminal do Curador com Maestro (aparece no canvas como "Maestro"), rodando `claude -n curador --add-dir ../ferramenta-grupos --append-system-prompt-file maestri/papeis/curador.md`. O Maestri grava o workspace em `C:\Users\arthu\.maestri\workspaces\<id>\`, fora do vault. No canvas: o terminal do Curador e as notas "Agora" e "Próximos passos".
- **Rotinas:** Abertura (9h), Vigia da nuvem (a cada 20 min, `maestri/scripts/vigia-nuvem.ps1`, olha o projeto e o vault) e Fechamento (21h30). O vigia avisa a cada push, inclusive os feitos do próprio notebook, e às vezes repete o aviso de um push já trazido.
- **Modelo do Curador:** `.claude/settings.local.json` (ignorado pelo git) pede o Sonnet na abertura do terminal. Em 12/10 à noite ela trocou a sessão para o Opus 5.5 com esforço médio, como padrão das sessões novas; na reabertura, conferir qual modelo sobe.
- **Cota:** a identidade e o media kit usaram workflows de vários agentes; o painel, a página e o deploy foram feitos sem agentes. Em 13/10 a sessão do Curador subiu no Opus 5.5; as quatro sessões na nuvem e os ajustes de UX (um subagente no Sonnet) levaram a semana de 93% a 96%.

## Decisões

- Vault separado do código; código e estado técnico só no projeto, e aqui o que não é código.
- O projeto é comandado pelo Curador no Maestri e o código é feito em sessões na nuvem, cada uma com uma função (`maestri/papeis/`). Um construtor por vez; a conversa com o agente é pelo app do Claude: [[2026-10-10-comando-pelo-maestri]].
- Desenvolver na cópia local do projeto, só por pedido explícito na conversa; o pedido não cobre commit, merge, push nem deploy. Escrito no `AGENTS.md` e no papel do Curador em 12/10.
- Planos: 5C e 5G no ar; da 5H, a página de vendas está no ar e faltam os documentos legais. A 5D (mensagens agendadas) saiu dos planos e da oferta do Atelier: [[2026-10-10-sem-mensagens-agendadas]].
- Identidade A (desenho botânico) fechada e aplicada: [[2026-10-12-identidade-botanica]], [[2026-10-12-pagina-de-vendas-fechada]].
- A marca não cita a criadora: [[2026-10-11-criadora-sem-ligacao-publica]].
- Prazos e avisos dos documentos legais: [[2026-10-10-documentos-legais-prazos]].
- O Curador entra no VPS por chave SSH e faz merge e deploy só com confirmação; uma autorização vale para o que foi dito, e não para o plano seguinte.

## O que aprendemos

Está escrito onde é usado: a skill `despachar-nuvem` (abrir sessão, cota, acompanhar, levar ao `master`), `maestri/papeis/curador.md` (deploy e servidor) e `maestri/plano-workspace.md` (rotinas, memória do notebook). Preço do Maestri: não confirmado (as fontes divergem: US$ 18 pagos uma vez ou US$ 19 por mês).
