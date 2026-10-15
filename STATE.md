# Estado

Reescrito em 14/10/2026, às 22h50, pelo Curador, no fechamento. Os dias estão em `30-diario/` ([[2026-10-13]], [[2026-10-14]]).

## Agora: o Plano 12 (12A e 12B) está feito na cópia local, sem push; falta o Pix, o 12C e o deploy

- **No ar:** o painel em `https://painel.usevitrinista.com.br` e a página de vendas em `usevitrinista.com.br`; o Plano 11 e as correções; os ajustes de UX de 13/10; a retirada do aviso dos 40. Servidor em `41d4caf`. **A IA das mensagens foi ligada em 14/10 à noite** (com o ok dela; `ANTHROPIC_API_KEY` no `.env`, log com "escrita por IA ligada"). Não conferido: uma copy gerada de verdade, se há crédito no Console e o número principal depois do reinício do worker.
- **Cadastro fechado** (`CADASTRO_ABERTO` ausente), página com `noindex`. Em produção a cobrança ainda é a do sandbox do Asaas: a Stripe só entra com o deploy do Plano 12.
- **Plano 12 na cópia local** (`../ferramenta-grupos`, branch `claude/stripe-billing-i0eof8`, ponta `6c72e16`): o 12A (Stripe e anual) e o 12B (teste com o Maison, cancelamento com motivo, pausa, teto do Essencial, faixa da renovação), feitos pelo Construtor local "Tear" (conta "Claude Trial 1"). **17 commits locais sem push; no GitHub a branch está em `351ef68`.** Roteiro da Stripe rodado no notebook: passou tudo menos o Pix (itens 4 e 8) e os e-mails (9). Roteiro do deploy em `ferramenta-grupos/docs/deploy-plano-12.md`. O resumo está no "Onde paramos" do `ferramenta-grupos/STATE.md` da branch.
- **Stripe, modo de teste:** produtos, os cinco preços e o portal foram cadastrados pelo Curador pela API em 14/10. O webhook fica para o deploy. **O Pix não funciona até ela concluir a ativação da conta** (dados da empresa e do recebedor): a configuração mostra o Pix ligado, mas a conta não tem a capacidade `pix_payments`. Ela disse que não consegue editar os dados na conta de teste: falta esclarecer o caminho.
- **Decidido em 14/10:** anual à vista ou 12x com compromisso de 12 meses, multa de 20% das parcelas restantes e pausa de até 30 dias quando uma parcela falha ([[2026-10-14-anual-em-12x-com-compromisso]]). Isso vira o Plano 12C, com a tarefa pronta em `.maestri/tarefa-12c.md`. Também: "Voltar agora" sem cobrar hoje ([[2026-10-14-pausa-voltar-agora-sem-cobrar]]).
- **Chaves passadas na conversa em 14/10**, guardadas só na pasta temporária da sessão do Curador (somem quando a sessão fecha): a restrita de teste da Stripe (ela revoga depois do webhook) e a da Anthropic (já no servidor). Ela precisa revogar a chave `sk-ant-usr-` colada antes.
- **Nuvem:** nenhuma sessão rodando ([[sessoes-nuvem]]).
- **Cota:** a conta principal estava em 96% da semana em 13/10, e zera na sexta, 16/10, às 16h. O Tear, na "Claude Trial 1", está em 15% da semana.

## Próximo

1. **Pix:** ela conclui a ativação da conta da Stripe; depois o Tear roda os itens 4 e 8 do roteiro.
2. **Plano 12C** (anual em 12x), com o ok dela, pelo Tear na mesma branch: `.maestri/tarefa-12c.md`. Começa por um adendo à spec, para ela aprovar. Os dois preços novos do 12x o Curador cadastra pela API.
3. **Push dos commits locais, merge e deploy do Plano 12**, cada um com o ok dela. No deploy: as migrações `0038` a `0040` (a `0038` apaga os ids do Asaas) e a limpeza das assinaturas de teste, cada uma com confirmação; o Curador cria o webhook e põe a `sk_test_` e o `whsec_` no servidor. Ela revoga a chave restrita depois.
4. **Ela confere na Fila** a primeira copy da IA e o número principal com o automático ligado.
5. **Ela, sem depender do resto:** advogado (anual, 12x com multa, cancelamento, IA, as seis lacunas, Termos de pessoa física); backup externo (não existe); DKIM no Zoho; revogar a chave `sk-ant-usr-`.
6. **Abrir o cadastro** quando tudo isso estiver feito: Stripe de produção (refazer produtos, preços, portal e webhook) e `CADASTRO_ABERTO=1`, cada passo com o ok dela.
7. **Documentos legais da 5H:** reescrever `.maestri/tarefa-5h.md` só com os documentos legais.
8. **Antes de qualquer despacho:** ler a cota; vault sincronizado; um construtor por vez; registrar em [[sessoes-nuvem]], no diário e na nota "Agora". Merge e deploy pedem confirmação nova a cada vez.
9. **Sobras:** a rotina "Revisor do Plano 11" está pausada e não serve mais (apagar pede o ok dela); o produto antigo "Assinatura Atelier" na conta de teste da Stripe.

## Ainda por fazer, sem data

- Da 5G: ver o cartão "Atendimento Atelier" quando houver a primeira conta no Atelier (o número de atendimento está no servidor como provisório, `ATENDIMENTO_WHATSAPP`, e não é escrito no vault); trocar pelo definitivo quando houver (linha no `.env` do servidor e `atualizar.sh`, com confirmação); olhar o log do worker no primeiro apagar real de um número, porque a resposta da Evolution ao apagar uma instância não foi confirmada.
- Com quem cuida do produto ([[pendencias]]): DKIM no Zoho ([[email-do-dominio]]); retorno do advogado; backup externo; Google Analytics ou não; link do dashboard da multimarca; as 8 frases de chamada; INPI.
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
- O projeto é comandado pelo Curador no Maestri. O código é feito em sessões na nuvem ou, a pedido dela, por um Construtor local no Maestri (o "Tear", desde 13/10). Um construtor por vez: [[2026-10-10-comando-pelo-maestri]].
- Desenvolver na cópia local do projeto, só por pedido explícito na conversa; o pedido não cobre commit, merge, push nem deploy.
- Cobrança pela Stripe, com anual e 12x: [[2026-10-13-stripe-no-lugar-do-asaas]], [[2026-10-13-plano-anual-maison-49-atelier-99]], [[2026-10-14-anual-em-12x-com-compromisso]].
- Identidade A (desenho botânico) fechada e aplicada: [[2026-10-12-identidade-botanica]], [[2026-10-12-pagina-de-vendas-fechada]].
- A marca não cita a criadora: [[2026-10-11-criadora-sem-ligacao-publica]].
- Prazos e avisos dos documentos legais: [[2026-10-10-documentos-legais-prazos]].
- O Curador entra no VPS por chave SSH e faz merge e deploy só com confirmação; uma autorização vale para o que foi dito. O modo automático do Claude Code pode barrar mesmo com o ok: ela sai do modo e aprova.

## O que aprendemos

Está escrito onde é usado: a skill `despachar-nuvem`, `maestri/papeis/curador.md` (deploy, servidor, Stripe) e `maestri/plano-workspace.md`. Novo em 14/10: na Stripe, o Pix ligado na configuração de formas de pagamento não quer dizer que ele funciona; o que manda é a capacidade `pix_payments` da conta, que só vem com a ativação. Chave da Anthropic de usuário (`sk-ant-usr-`) pede o cabeçalho de workspace; a do servidor tem que ser de workspace (`sk-ant-api03-`).
