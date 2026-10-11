# Estado

Reescrito em 11/10/2026 às 20h pelo Curador, depois do merge e do deploy da 5G. Os dias estão em `30-diario/2026-10-10.md` e `30-diario/2026-10-11.md`.

## Como o vault funciona hoje

- **Pastas no notebook:** `C:\Users\arthu\claude code\segundo-cerebro` (este vault) ao lado do clone do projeto em `claude code\ferramenta grupos` (com espaço). A junction `claude code\ferramenta-grupos` aponta para ele, para que `../ferramenta-grupos` funcione como está escrito aqui. A cópia local está no `master`; um `next-env.d.ts` alternado ficou no stash dela.
- **Sync:** Obsidian Git 2.41.1, commit-and-sync a cada 10 min e pull ao abrir, mensagem `vault: {{date}}`. **Só roda com o Obsidian aberto.** Agentes locais não fazem commit. O repositório é público (branch padrão `claude/magical-fermi-mfb4ah`): nada de segredo, dado pessoal nem detalhe de segurança do servidor aqui.
- **Maestri:** workspace "vitrinista", terminal do Curador com Maestro (aparece no canvas como "Maestro"), rodando `claude -n curador --add-dir ../ferramenta-grupos --append-system-prompt-file maestri/papeis/curador.md`. O Maestri grava o workspace em `C:\Users\arthu\.maestri\workspaces\<id>\`, fora do vault; `.maestri/` aqui dentro é ignorado pelo git e guarda só a última leitura do vigia.
- **Canvas:** o terminal do Curador e as notas "Agora" e "Próximos passos". Terminal Shell e portal são abertos para uma tarefa e dispensados depois. Plano e medições: `maestri/plano-workspace.md`.
- **Rotinas:** Abertura (9h), Vigia da nuvem (a cada 20 min, `maestri/scripts/vigia-nuvem.ps1`, olha o projeto e o vault) e Fechamento (21h30). O vigia foi confirmado com pushes reais em 10/10.
- **Curador no Sonnet** por `.claude/settings.local.json` (ignorado pelo git), valendo a partir da próxima abertura do terminal. Não conferido se o terminal de fato sobe no Sonnet.

## Decisões

- Vault separado do código; código e estado técnico só no projeto, e aqui o que não é código.
- O projeto é comandado pelo Curador no Maestri e o código é feito em sessões na nuvem, cada uma com uma função (`maestri/papeis/`). Um construtor por vez; a conversa com o agente é pelo app do Claude: [[2026-10-10-comando-pelo-maestri]].
- Ordem dos planos: 5C e 5G feitos e no ar, depois 5H. Decisões da 5G: [[2026-10-10-plano-5g-administracao]]. A 5D (mensagens agendadas) saiu dos planos e da oferta do Atelier: [[2026-10-10-sem-mensagens-agendadas]].
- Prazos e avisos dos documentos legais: [[2026-10-10-documentos-legais-prazos]].
- O Curador entra no VPS por chave SSH e faz deploy só com confirmação.

## O que aprendemos no Maestri e na nuvem

Está escrito onde é usado: a skill `despachar-nuvem` (como abrir sessão, mandar mensagem, ler pelo portal) e `maestri/plano-workspace.md` (o `--pre-run` no Windows, memória). Em resumo:

- `claude --cloud "<tarefa>"` exige terminal interativo: roda num terminal Shell recrutado, cria a sessão e devolve o link. Conectar um terminal a uma sessão existente não está habilitado na conta. `claude -p "<mensagem>" --cloud <id>` entrega mensagem e funciona pela ferramenta de shell.
- A conversa de uma sessão só aparece no claude.ai, no app ou num portal do canvas. Daqui o Curador vê os commits.
- Aspa dupla no `--pre-run` de uma rotina faz ela não rodar no Windows, sem erro.
- No servidor: agrupar os comandos em poucas conexões SSH (muitas seguidas foram recusadas por alguns minutos em 10/10, causa não identificada), rodar o que demora com `nohup` e log em `/tmp`, gravando o código de saída no log (`echo EXIT=$?`); num script mandado por `ssh ... bash -s`, pôr `</dev/null` em todo `docker compose exec -T` ou `logs`, senão ele engole o resto do script (11/10); e filtrar variável de ambiente pelo nome exato (um filtro largo imprimiu uma senha na conversa em 10/10; em nenhum arquivo).
- Preço do Maestri: não confirmado (as fontes divergem: US$ 18 pagos uma vez ou US$ 19 por mês).

## Onde paramos (11/10, 20h)

- **5G (administração) no `master` desde as 19h43 de 11/10** (`aa655fb`), por avanço direto de `b45bbc7`, 30 commits, 136 arquivos, uma migração (`0036`). Feito com a autorização dada na conversa à 0h01 de 11/10 ("quando essa próxima tarefa terminar, pode levar pra master e fazer o merge direto"). Conferido antes: o `STATE.md` da branch dizia terminado (nove tarefas, revisão em seis lentes com 7 achados confirmados e corrigidos, conferência no navegador, suítes verdes, tudo segundo ele; o Curador não rodou as suítes), o `master` não tinha andado, e do que entrou só os `.env.example` têm cara de segredo, com o valor vazio. 
- O que a 5G traz, as decisões e onde ler: [[2026-10-10-plano-5g-administracao]] e o `STATE.md` do projeto. Com ela foram ao `master` os três acertos do início: o `STATE.md` de lá corrigido, as mensagens agendadas fora do projeto ([[2026-10-10-sem-mensagens-agendadas]]) e o `deploy/atualizar.sh` consertado.
- Construtor: `session_018vtJhnFxU15MdfeuPieSrY`, branch `claude/plan-5g-admin-lvjaat`, linha em [[sessoes-nuvem]]. A execução parou uma vez (processo reiniciado às 2h, sem push até ali) e voltou com uma mensagem do Curador às 9h03; a lição está na skill `despachar-nuvem`.
- **5G no servidor desde as 19h48 de 11/10** (`aa655fb`), com ok dado na conversa ("pode subir"). A primeira execução do `atualizar.sh` (19h46) abortou com código 141 depois do pull: quem rodou foi o script antigo, que o próprio pull substitui, e eram 30 commits. Os containers antigos seguiram no ar. A segunda execução (19h47) terminou em 60 segundos com código 0, já com o script consertado no disco. Conferido depois: os cinco containers saudáveis; web e worker recriados e rodando as imagens novas; migração `0036` aplicada (tabela `admin_actions` e as três colunas, 37 migrações); duas contas, nenhuma pausada nem suspensa; o número principal conectado com o automático ligado e o segundo desconectado, como antes; nenhum erro no log do worker nem da web; `/entrar` e os documentos legais respondem e `/admin` sem sessão manda para a entrada. O painel de administração foi conferido por quem cuida do produto ("tudo certo", na conversa de 11/10). Não conferido por ninguém: o texto novo dos planos em `/assinar` e o cartão de atendimento do Atelier.
- **Número de atendimento do Atelier no servidor desde as 19h52 de 11/10** (`ATENDIMENTO_WHATSAPP`, informado na conversa como provisório; não é escrito no vault). Aplicado com o `atualizar.sh`, que recriou só a web (10 segundos, código 0); conferido que o container da web lê a variável e que o worker e o número principal não foram tocados. A conferência do passo 16 de `docs/implantacao.md` não foi feita: ela cria uma conta de teste que fica no banco.
- **Servidor:** painel em `https://painel.usevitrinista.com.br`, em `aa655fb`, com 5F, 5C e 5G no ar. Backup feito pelo script antes de atualizar (19h46).
- **E-mail do domínio:** caixa `contato@` no Zoho Mail recebendo; falta o DKIM. Ver [[email-do-dominio]].
- **Cota da semana:** 58% às 9h02 de domingo 11/10 (barra do Claude Code, `7d`), antes das tarefas T5 a T9 e da revisão da 5G. O valor depois delas não foi lido. Zera na sexta às 16h.

## Próximo passo

1. **Conferir o sync do vault a cada abertura** (`git log origin/claude/magical-fermi-mfb4ah..HEAD` vazio e `git status` limpo). Se houver coisa parada, o Obsidian está fechado: abrir com `cmd /c start "" "obsidian://open?path=<pasta do vault>"`.
2. **Depois do deploy da 5G, ainda por fazer:** ver o cartão "Atendimento Atelier" quando houver a primeira conta no Atelier (ou criar a conta de teste do passo 16, se ela pedir); trocar o número de atendimento quando o definitivo for escolhido; olhar o log do worker no primeiro apagar real de um número, porque a resposta da Evolution ao apagar uma instância não foi confirmada.
3. **Levar ao próximo agente do projeto:** o `STATE.md` de lá ainda diz que a 5G está "sem merge e sem deploy"; ela está no `master` desde as 19h43 e no servidor desde as 19h48 de 11/10. O `atualizar.sh` abortou mais uma vez nesse deploy, pelo motivo acima; a partir do próximo vale o consertado, sem mudança de código. Próximo plano: 5H (página de vendas e documentos), com um Construtor novo, só com pedido e olhando a cota antes. Para a 5H, da 5G: os textos legais ainda não citam o registro das ações de administração, a pausa e a suspensão, o WhatsApp do atendimento nem que o número apagado continua registrado (`STATE.md` do projeto, "Em aberto").
4. **Com quem cuida do produto** (ver [[pendencias]]): DKIM no Zoho; seis lacunas para o advogado; prova da autorização das lojas; onde fica o backup externo; Google Analytics ou não; link do dashboard da multimarca; as 8 frases de chamada; @ no Instagram; INPI.
5. **Sem decisão, guardado em [[ideias]]:** 13 ideias de features e as sugestões de planos e página de vendas para o objetivo de levar o máximo de assinantes ao Maison ou ao Atelier, com lucro e sem perder leads. Três perguntas esperam resposta: teste grátis com os recursos do Maison, Maison como "recomendado pela Fran" e o alvo ser o Maison. Se aprovadas, vão para a 5H.
6. **Do plano do workspace, ainda por fazer:** atualizar `maestri/configurar-no-windows.md` com as rotinas, o terminal do VPS e o portal.
