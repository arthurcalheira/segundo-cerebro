# Estado

Reescrito em 12/10/2026, à noite, pelo Curador, e fechado às 22h40, depois dos testes do sandbox do Asaas e do deploy de `7752abb`. Os dias estão em `30-diario/` ([[2026-10-10]], [[2026-10-11]], [[2026-10-12]]).

## Agora: painel e página de vendas no ar; falta decidir o cadastro

- **No ar desde 12/10** (merge, push e deploy autorizados na conversa; `master` de `aa655fb` a `4c8b006`, sem migração): o painel na identidade A, nos temas claro e escuro ([[2026-10-12-painel-na-identidade-a]]); a página de vendas em `usevitrinista.com.br`, com o `www` redirecionando para a raiz ([[2026-10-12-pagina-na-raiz-do-dominio]]); e o Atelier à venda. O painel segue em `https://painel.usevitrinista.com.br`.
- **Cadastro fechado** (`CADASTRO_ABERTO=0`): os botões da página levam a "O cadastro ainda não abriu". A página está com `noindex`.
- **Repositório do projeto:** `master` em `7752abb` no GitHub, no servidor e na cópia local (conferido em 12/10, 22h32). As branches `plano-5h-pagina-de-vendas`, `painel-identidade-botanica`, `vendas-raiz-e-ajustes` e `conta-plano-e-nome-na-fatura` existem só na cópia local e estão contidas no `master`. `docs/marca/estudos-identidade/` e `estudos-logo/` seguem sem versionar. Um `next-env.d.ts` alternado ficou no stash da cópia.
- **Mudanças de 12/10 à noite, feitas na cópia do projeto:** o cartão do plano em Conta (subir de plano à vista; descer, cancelar e desistir recolhidos) e o nome do plano na fatura ao trocar de plano. Oito arquivos em `apps/web`, `apps/worker` e `packages/core`; suítes passando (core 1041, worker 642, web 638). No `master`, no GitHub e no servidor desde 12/10, 22h32 (`902f273` e `7752abb`, sem migração; conferido depois do deploy). Falta ela olhar o cartão do plano por dentro do painel.
- **Sandbox do Asaas (12/10, noite):** atraso, pagar fatura atrasada e subir de plano com a diferença passaram. O estorno passou só na cobrança Pix; as mensalidades da conta de teste estão no Asaas como boleto e o estorno delas foi recusado. A conta de teste ficou cancelada, valendo até 09/11. Causa e o que fazer antes de abrir: [[asaas-estorno-pix-e-boleto]]. Detalhes em [[2026-10-12]].
- **Plano 11 (montador da mensagem e copy por IA): no ar desde 13/10, 16h14, com a IA desligada.** Feito pelo Construtor das 15h07 às 15h55 ([[sessoes-nuvem]], [[2026-10-13-montador-de-mensagem-com-a-copy-por-ia]]), sem revisor; merge pela sessão a pedido dela e deploy rodado por ela. Servidor em `a75d6b5`, conferido pelo Curador às 16h28 (migração `0037` aplicada, containers saudáveis, sem erro nos logs). `master` do GitHub e da cópia local em `5c6d61f` (dois commits de documentação a mais, sem deploy pendente). **Falta:** ela olhar as telas (Regras, Fila, planos) e ver um envio sair; uma revisão do código, que não houve; para ligar a IA, crédito no Claude Console, `ANTHROPIC_API_KEY` no servidor e os documentos legais ([[pendencias]]). Enquanto isso os cartões do Maison e do Atelier já dizem "Mensagem escrita por IA no seu tom" (decisão dela), com o cadastro fechado.
- **Nuvem:** o revisor do Plano 11 rodando (item 0 de "Próximo").
- **Não conferido:** Trocar peça, Criar conta, ficha de conta na administração e documentos legais a olho; o estado do número `close` no servidor (1 aberto e 1 fechado; o estado antes do deploy não foi lido); a data do último backup depois de 11/10, 19h46.
- **Desatualizado:** o `BRIEF.md` da página (`ferramenta-grupos/docs/marca/identidade-botanica/landing/`) é do estado de 12/10 à tarde. A página mudou depois (benefícios compactos, "Sua mensagem" dentro de "Como funciona", sem a faixa índigo, barra fixa).

## Próximo

Em 12/10 à noite ela escolheu abrir o cadastro que já existe (em vez de refazer telas ou criar lista de espera). Na ordem:

0. **Revisor do Plano 11 rodando desde 13/10 à tarde** (`session_0158N78JfygxaYjhzsYjYMEi`, em [[sessoes-nuvem]]), despachado com a cota em 95% por decisão dela. Entrega: `entregas/2026-10-13-revisao-plano-11.md` numa branch própria do projeto; trazer para o `00-inbox/` pela seção Fechar da skill `despachar-nuvem` e resumir os achados para ela. Achado marcado "URGENTE" vale para o que já está em produção. Se a branch não aparecer, o motivo provável é a cota (zera em 16/10, 16h). A rotina "Revisor do Plano 11" do Maestri está pausada: sobrou do plano de despachar na sexta, e apagar pede o ok dela.
1. **Abrir o cadastro, o que falta** ([[pendencias]], [[asaas-estorno-pix-e-boleto]]): conta de produção do Asaas com a chave Pix criada antes da primeira assinatura; repetir o estorno com assinatura Pix e de cartão; a autorização de ação crítica do Asaas; a decisão sobre o estorno que falha no meio; advogado; backup externo (não existe). Só então a troca para a produção (passo 14 de `ferramenta-grupos/docs/implantacao.md`) e o `CADASTRO_ABERTO=1`, cada passo com o ok dela. A indexação segue com a recomendação, não confirmada por ela, de manter o `noindex` até abrir.
2. **Ela olha** o painel e a página no celular de verdade, nos dois temas. O Edge do notebook informa movimento reduzido: nesse modo as entradas ao rolar são só fade de 120 ms; para ver a animação completa, ligar "Efeitos de animação" no Windows.
3. **Abrir o Construtor, quando ela autorizar.** Ela quer guardar a cota: ler a cota antes de qualquer despacho (skill `despachar-nuvem`, "Antes"). A última leitura é de 13/10, 16h40: 95% da semana usados. Zera na sexta, 16/10, às 16h. Se não der para ler, dizer isso e pedir que ela olhe o `/usage`. Duas tarefas em `.maestri/` (fora do git, só neste notebook); a primeira foi despachada em 13/10:
   - `tarefa-copy-ia.md`: reescrita em 13/10 com duas partes, o montador visual da mensagem e a copy por IA, condição para a página dizer "no tom dela" ([[2026-10-13-montador-de-mensagem-com-a-copy-por-ia]], [[2026-10-12-copy-por-ia-antes-do-lancamento]]). Despachada em 13/10, do `master` em `5563c51`, sem perguntas a ela. Próximo: trazer a spec quando sair e pedir a aprovação dela.
   - `tarefa-5h.md`: **não despachar como está.** Foi escrita quando a 5H incluía a página de vendas, que acabou feita no notebook. Reescrever só com os documentos legais e o que deles vira código. Se o arquivo tiver sumido, o conteúdo está em [[pendencias]] e [[2026-10-10-documentos-legais-prazos]].
4. **Antes de despachar:** vault sincronizado (`git status` limpo e `git log origin/claude/magical-fermi-mfb4ah..HEAD` vazio) e cópia local do projeto no `master` atual. Um construtor por vez. Registrar em [[sessoes-nuvem]], no diário e na nota "Agora" do canvas.
5. **O que o Construtor vai perguntar a ela:**
   - montador e copy por IA: como ela ensina o tom, o que a IA escreve, editar por peça, em quais planos, teto de custo, os textos dos estilos prontos;
   - documentos legais: as seis lacunas do advogado, o que a 5G criou e os textos não citam, e os Termos de uso que identificam uma pessoa física ([[pendencias]]). Sem resposta, ficam marcados no texto;
   - onde fica o backup externo; Google Analytics ou só o pixel da Meta;
   - as 8 frases de chamada e o link do dashboard da multimarca.
6. **Merge e deploy pedem confirmação nova** a cada plano. As autorizações de 11 e 12/10 já foram usadas.

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
- **Cota:** a identidade e o media kit usaram workflows de vários agentes; o painel, a página e o deploy foram feitos sem agentes.

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
