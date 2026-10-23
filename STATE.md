# Estado

## Agora

Atualizado em 23/10/2026, 09h, pelo Curador, ao fechar a sessão de 22 e 23/10. Os dias estão em [[2026-10-22]] e [[2026-10-23]]; as decisões da noite, em [[revisar-decisoes-da-noite]].

- **No ar** (`master` e servidor em `eb01f81`, deploy de 23/10, 07h47): botões que copiam o site (Bazar pelo menu, banner com preço, Vitrine da Semana = `ta-na-vitrine`, a loja em todo botão, "FARM Rio"); leitura de promoções que não cai inteira (reloginho pela home e pela agenda); conferente do site de hora em hora, com releitura automática da contagem, botão provisório, leitura da imagem dos banners pela IA e avisos no celular da administração ([[2026-10-22-conferente-do-site]]); cupom na assinatura; chave fixa das server actions; CI no GitHub a cada push; reenvio no mesmo dia na opção B; abas de loja no Catálogo e no Trocar; Conta > Novidades; cupom conferido peça por peça no carrinho; lembrete de pagamento abandonado (só por notificação); Lojix automática (vigia, Promoção à mão, avisos, peça apresentada nos grupos, nome da edição), **desligada** até `LOJIX_AUTOMATICA=1`.
- **Rotinas:** Abertura (9h), Vigia da nuvem (20 min), Fechamento (21h30) e, desde 22/10, **Conferente do site** (1 h, `maestri/scripts/conferente-site.ps1`; a linha do ssh em `.maestri/servidor.txt`, fora do git).
- **Construtores:** Trama e Tear livres. Uma sessão nova (`/clear`) a cada tarefa; o `/clear` só depois de o construtor ficar livre (`.maestri/mandar-tarefa.sh`).
- **Vídeo de lançamento:** primeiro corte em `ferramenta-grupos-catalogo/docs/marca/video-lancamento/` (sem commit).
- **Notebook:** ~2,6 GB livres; várias worktrees das branches da noite ficaram (todas no `master`), para limpar com o ok dela.

## Próximo

1. **Com ela:** ler [[revisar-decisoes-da-noite]]; textos do lembrete de pagamento e das Novidades; serviço de e-mail; o vídeo (trilha e a cena do preço); o primeiro cupom; ligar a Lojix automática na véspera da próxima live; o texto não enviado no terminal do Tear; ativar os avisos no celular com a conta de administração.
2. **Técnico, sem tarefa ainda:** caminho 2 (conserto por código pela nuvem), a rever em algumas semanas; o reenvio no mesmo dia de verdade (opção A), se ela quiser.
3. **Da fila de antes:** a chave da Stripe de teste nova está só na pasta temporária da sessão de 22/10 (some com ela); o advogado (IA, Privacidade, Termos dos preços, atendimento e agora o cupom); backup externo; reiniciar o notebook.

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

- 22/10: [[2026-10-22-conferente-do-site]]; as da noite de 22 para 23/10 em [[revisar-decisoes-da-noite]], para ela revisar.
- 21/10: [[2026-10-21-edicao-livre]].
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
