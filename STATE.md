# Estado

Reescrito no fechamento de 10/10/2026 pelo Curador. O dia inteiro está em `30-diario/2026-10-10.md`.

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
- Ordem dos planos: 5C, depois 5D (requisito do lançamento), depois 5G e 5H: [[2026-10-10-plano-5c-varios-numeros]].
- Prazos e avisos dos documentos legais: [[2026-10-10-documentos-legais-prazos]].
- O Curador entra no VPS por chave SSH e faz deploy só com confirmação.

## O que aprendemos no Maestri e na nuvem

Está escrito onde é usado: a skill `despachar-nuvem` (como abrir sessão, mandar mensagem, ler pelo portal) e `maestri/plano-workspace.md` (o `--pre-run` no Windows, memória). Em resumo:

- `claude --cloud "<tarefa>"` exige terminal interativo: roda num terminal Shell recrutado, cria a sessão e devolve o link. Conectar um terminal a uma sessão existente não está habilitado na conta. `claude -p "<mensagem>" --cloud <id>` entrega mensagem e funciona pela ferramenta de shell.
- A conversa de uma sessão só aparece no claude.ai, no app ou num portal do canvas. Daqui o Curador vê os commits.
- Aspa dupla no `--pre-run` de uma rotina faz ela não rodar no Windows, sem erro.
- No servidor: agrupar os comandos em poucas conexões SSH (muitas seguidas foram recusadas por alguns minutos em 10/10, causa não identificada), rodar o que demora com `nohup` e log em `/tmp`, e filtrar variável de ambiente pelo nome exato (um filtro largo imprimiu uma senha na conversa em 10/10; em nenhum arquivo).
- Preço do Maestri: não confirmado (as fontes divergem: US$ 18 pagos uma vez ou US$ 19 por mês).

## Onde paramos (10/10, 21h45)

- **Sync do vault:** ficou parado das 14h19 às 21h47, porque o Obsidian estava fechado; nesse intervalo as sessões na nuvem leram um vault sem as notas da tarde (a nota [[2026-10-10-documentos-legais-prazos]], citada no `STATE.md` do projeto, não existia no GitHub). O Curador abriu o Obsidian no fechamento e o commit `3444c87` subiu com tudo (conferido: nada pendente, e o `.claude/settings.local.json` ficou de fora). O Obsidian ficou aberto, com 251 MB.
- **5C no `master` desde as 21h55 de 10/10** (`b45bbc7`), por avanço direto feito pelo Curador com o ok dado na conversa ("pode subir ao master sim"). **Ainda não está no servidor:** o deploy não foi pedido. O Construtor (`session_013rwxSVet66nEoYze4K1roE`, ver `10-vitrinista/sessoes-nuvem.md`) terminou em `b45bbc7`, na branch `claude/plano-5c-multi-numeros-a0ybgc`: oito tarefas, revisão em quatro lentes (14 achados menores, corrigidos), conferência no navegador, suítes verdes, `STATE.md` do projeto reescrito. A branch leva também a troca do e-mail de contato do site para `contato@usevitrinista.com.br`.
- **Servidor:** painel em `https://painel.usevitrinista.com.br` desde as 15h38 (troca do domínio concluída, Asaas incluído), em `572e93a`, com a 5F no ar. Senha de root trocada.
- **E-mail do domínio:** caixa `contato@` no Zoho Mail recebendo; falta o DKIM. Ver [[email-do-dominio]].
- **Cota da semana:** 39% usada às 15h de sábado, com aviso de que acabaria antes do reset de sexta às 16h. O 5C inteiro rodou depois dessa medição: o valor atual não foi conferido.

## Próximo passo

1. **Conferir o sync do vault a cada abertura** (`git log origin/claude/magical-fermi-mfb4ah..HEAD` vazio e `git status` limpo). Se houver coisa parada, o Obsidian está fechado: abrir com `cmd /c start "" "obsidian://open?path=<pasta do vault>"`.
2. **Deploy do 5C, com confirmação** (o merge já foi feito). Antes, no servidor (lista do `STATE.md` do projeto, seção "Antes do merge e do deploy do 5C"):
   - quantos números a conta de produção tem e qual é o mais antigo, porque a web passa a abrir no mais antigo. Em 10/10 o `wa:status` mostrava dois, um conectado com o automático ligado e um desconectado sem grupo; não conferido se são da mesma conta;
   - a conta de produção é admin e vale como Atelier: a tela Conexão muda mesmo com um número;
   - o worker sobe antes da web, e a web precisa ser recriada: no deploy de 10/10 o container da web não foi recriado, embora a imagem tivesse sido reconstruída.
3. **Avisar o próximo agente do projeto** do que o `STATE.md` de lá ainda traz errado: o webhook do Asaas no endereço novo já foi cadastrado em 10/10 e os dois ajustes no painel do Asaas foram feitos; a caixa `contato@` já recebeu mensagem real; o 5C já está no `master` (o texto de lá diz "sem merge").
4. **Abrir o Construtor da 5D** depois do 5C no `master`, se a cota permitir.
5. **Com quem cuida do produto** (ver [[pendencias]]): DKIM no Zoho; seis lacunas para o advogado; prova da autorização das lojas; onde fica o backup externo; Google Analytics ou não; link do dashboard da multimarca; as 8 frases de chamada; @ no Instagram; INPI.
6. **Do plano do workspace, ainda por fazer:** atualizar `maestri/configurar-no-windows.md` com as rotinas, o terminal do VPS e o portal.
