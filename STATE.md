# Estado

Atualizado em 15/10/2026, às 17h45, pelo Curador (sessão ainda aberta). Os dias estão em `30-diario/` ([[2026-10-14]], [[2026-10-15]]).

## Agora: o Plano 12 com o 12C está no GitHub, sem merge; o Tear faz o Pix só no anual à vista

- **No ar:** o painel em `https://painel.usevitrinista.com.br` e a página de vendas em `usevitrinista.com.br`; o Plano 11 e as correções; os ajustes de UX de 13/10; a retirada do aviso dos 40. Servidor em `41d4caf`. **A IA das mensagens foi ligada em 14/10 à noite** (com o ok dela; `ANTHROPIC_API_KEY` no `.env`, log com "escrita por IA ligada"). Não conferido: uma copy gerada de verdade, se há crédito no Console e o número principal depois do reinício do worker.
- **Cadastro fechado** (`CADASTRO_ABERTO` ausente), página com `noindex`. Em produção a cobrança ainda é a do sandbox do Asaas: a Stripe só entra com o deploy do Plano 12.
- **Plano 12 na cópia local** (`../ferramenta-grupos`, branch `claude/stripe-billing-i0eof8`): o 12A, o 12B e o 12C (anual em 12x), feitos pelo Construtor local "Tear" (conta "Claude Trial 1"). No GitHub em `9b3f930` (push de 15/10, com o ok dela). Roteiro da Stripe rodado: tudo passou, inclusive o 12x (item 12), menos o Pix, que muda de desenho. Roteiro do deploy em `ferramenta-grupos/docs/deploy-plano-12.md`; resumo no "Onde paramos" do `ferramenta-grupos/STATE.md` da branch.
- **Stripe, modo de teste:** produtos, os sete preços (os dois do 12x criados em 15/10) e o portal cadastrados pelo Curador pela API. Conta ativada por ela em 15/10. Ela configurou em 15/10: tentativas terminando em vencida, e-mails de pagamento que falhou (link da Stripe), de recibo, de cartão vencendo e de aviso de renovação. O webhook fica para o deploy. **Pix:** conta brasileira só aceita Pix avulso; a fatura de assinatura recusa, mesmo com a conta ativada (testado pela API em 15/10). Decisão: [[2026-10-15-pix-so-no-anual-a-vista]].
- **Decisões de 14 e 15/10:** o 12x ([[2026-10-14-anual-em-12x-com-compromisso]], adendo aprovado em 15/10), "Voltar agora" sem cobrar hoje ([[2026-10-14-pausa-voltar-agora-sem-cobrar]]) e o Pix só no anual à vista.
- **Chaves:** a restrita de teste da Stripe e a da Anthropic ficam só na pasta temporária da sessão do Curador (somem quando a sessão fecha); ela revoga a da Stripe depois do webhook. A `sk-ant-usr-` foi revogada por ela em 15/10.
- **Advogado:** sem advogado pago; o Curador pesquisa a lei e propõe as respostas (Próximo, item 5).
- **Nuvem:** nenhuma sessão rodando ([[sessoes-nuvem]]).
- **Cota:** a conta principal zera na sexta, 16/10, às 16h. O Tear, na "Claude Trial 1", estava em 22% da semana em 15/10.

## Próximo

1. **Pix só no anual à vista** ([[2026-10-15-pix-so-no-anual-a-vista]]): adendo aprovado por ela em 15/10 (`9b3f930`, as quatro recomendações do Tear); o Tear está no código, com commit e sem push, e depois roda o Pix de ponta a ponta na Stripe de teste. Ao terminar: pedir o ok do push e gerar de novo os Word de `.maestri/advogado/` (o item 6 dos Termos muda).
2. **Plano 12C** (anual em 12x): feito e testado (`c4e0818` a `6730333`, no GitHub). Desvio do adendo, registrado lá: a volta da parcela usa `trial_end` em vez de `billing_cycle_anchor: now`. No `demo-seed.test.ts`, 76 de 77 (o que semeia duas vezes passa do limite de 5 s pela lentidão da máquina).
3. **Merge e deploy do Plano 12**, cada um com o ok dela. No deploy: as migrações `0038` a `0041` (a `0038` apaga os ids do Asaas) e a limpeza das assinaturas de teste, cada uma com confirmação; o Curador cria o webhook e põe a `sk_test_` e o `whsec_` no servidor. Ela revoga a chave restrita depois.
4. **Ela confere na Fila** a primeira copy da IA e o número principal com o automático ligado.
5. **Lacunas legais, respondidas em 15/10 sem advogado** ([[2026-10-15-lacunas-legais-respondidas]], pesquisa em [[2026-10-15-lacunas-legais]]): o 12x não renova o compromisso sozinho, o anual à vista devolve os meses não usados menos 20%, sai o limite de uma desistência, foro no domicílio da consumidora, site só com o contato (sem nome e CPF, risco médio aceito por ela). Tarefa para o Tear depois do Pix: `.maestri/tarefa-lacunas-legais.md`. Depois, gerar de novo os Word. **Ela, sem depender do resto:** backup externo (não existe); o DMARC no registro.br. Feitos em 15/10: a chave `sk-ant-usr-` revogada; o DKIM do Zoho publicado (seletor `zmail`); na Stripe de teste, as tentativas terminando em vencida, os e-mails de pagamento que falhou com o link da Stripe, de recibo, de cartão vencendo e de aviso de renovação.
6. **Abrir o cadastro** quando tudo isso estiver feito: Stripe de produção (refazer produtos, preços, portal e webhook) e `CADASTRO_ABERTO=1`, cada passo com o ok dela.
7. **Documentos legais da 5H:** reescrever `.maestri/tarefa-5h.md` só com os documentos legais.
8. **Antes de qualquer despacho:** ler a cota; vault sincronizado; um construtor por vez; registrar em [[sessoes-nuvem]], no diário e na nota "Agora". Merge e deploy pedem confirmação nova a cada vez.
9. **Sobras:** a rotina "Revisor do Plano 11" está pausada e não serve mais (apagar pede o ok dela); o produto antigo "Assinatura Atelier" na conta de teste da Stripe.

## Ainda por fazer, sem data

- Da 5G: ver o cartão "Atendimento Atelier" quando houver a primeira conta no Atelier (o número de atendimento está no servidor como provisório, `ATENDIMENTO_WHATSAPP`, e não é escrito no vault); trocar pelo definitivo quando houver (linha no `.env` do servidor e `atualizar.sh`, com confirmação); olhar o log do worker no primeiro apagar real de um número, porque a resposta da Evolution ao apagar uma instância não foi confirmada.
- Com quem cuida do produto ([[pendencias]]): DMARC e teste de envio do e-mail ([[email-do-dominio]]); retorno do advogado; backup externo; Google Analytics ou não; link do dashboard da multimarca; as 8 frases de chamada; INPI.
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
