# Estado

**09/10/2026:** vault montado numa sessão do Claude Code na nuvem: estrutura, regras (`AGENTS.md`), skills (`processar-inbox`, `fechar-sessao`, `despachar-nuvem`), papéis do Maestri e guia do Windows.

**10/10/2026:** instalado no notebook Windows pelo roteiro `maestri/instalar-pelo-agente.md`:

- [x] Pastas: `C:\Users\arthu\claude code\segundo-cerebro`, ao lado do clone que já existia em `claude code\ferramenta grupos` (com espaço, na branch `plano-4a`). A junction `claude code\ferramenta-grupos` aponta para ele, para que `../ferramenta-grupos` funcione como está escrito no vault.
- [x] Obsidian 1.14.4 e Maestri 0.21.5 já estavam instalados.
- [x] Obsidian Git 2.41.1 em `.obsidian/plugins/obsidian-git/`: commit-and-sync a cada 10 min (`autoSaveInterval`), pull ao abrir (`autoPullOnBoot`), mensagem `vault: {{date}}` (`commitMessage` e `autoCommitMessage`). As chaves foram tiradas dos `DEFAULT_SETTINGS` do `main.js`.
- [x] Vault aberto no Obsidian, com o plugin ativo.
- [x] Workspace "vitrinista" no Maestri, com o terminal `curador` (Maestro marcado) rodando `claude -n curador --add-dir ../ferramenta-grupos --append-system-prompt-file maestri/papeis/curador.md`. O terminal tinha subido só com `claude`; o comando foi corrigido no `workspace.json` com o Maestri fechado.
- [x] Sync testado: primeiro commit automático `vault: 2026-10-10 12:50:48` com push. Antes disso o commit falhava porque o git do notebook não tinha nome e e-mail. A identidade foi configurada só neste repositório, com o e-mail noreply do GitHub (o repositório é público).

## Decisões

- **Vault separado do código**, com o projeto na pasta irmã `../ferramenta-grupos`. Abrir o repositório do projeto como vault faria o Obsidian varrer o `node_modules` num notebook de 3,7 GB, e o estado técnico já tem lugar (`STATE.md` de lá).
- **Código e estado técnico só no projeto; no vault, o que não é código.** O vault aponta para os arquivos do projeto e não copia.
- **O código é feito nas sessões na nuvem** (é assim que o projeto já trabalha). No notebook roda só o Curador, no Maestri; `../ferramenta-grupos` lá é cópia de leitura. Decidido em 10/10, depois do primeiro desenho com um Executor local.
- **Sync pelo Obsidian Git**; agentes locais não fazem commit no vault. Sessão na nuvem só cria arquivo novo no inbox e faz push.
- **Repositório público**, por escolha confirmada em 09/10. A branch padrão no GitHub é `claude/magical-fermi-mfb4ah`.

## Maestri no Windows

- **Confirmado em 10/10:** o Maestri grava o workspace (canvas, notas, terminais, snapshots) em `C:\Users\arthu\.maestri\workspaces\<id>\`, fora do vault. Na pasta de trabalho não apareceu nada. O `.gitignore` passou a ignorar `.maestri/` por precaução: a skill `maestri-manager` diz que recrutas com papel rodam em `.maestri/roles/<id>/`.
- **Confirmado em 10/10, modo Maestro:** `maestri list`, `preset list`, `workspace list`, `note create/write` e `routine create/edit/run` funcionam. O terminal aparece no canvas como "Maestro". `recruit`, portal e floors ainda não foram usados.
- **Rotinas (10/10):** Abertura 9h, Vigia da nuvem a cada 20 min e Fechamento 21h30. O `--pre-run` roda no `cmd.exe` e não executa se tiver aspa dupla; detalhes em `maestri/plano-workspace.md`. O vigia guarda a última leitura das branches em `.maestri/vigia-refs.txt` (ignorado pelo git).
- **Não confirmado:** a entrega do comando de uma rotina no terminal do Curador com o `{{output}}` preenchido (teste de disparo único agendado para as 14h21 de 10/10); preço (as fontes divergem: US$ 18 pagos uma vez ou US$ 19 por mês).

## Próximo passo

Plano do workspace em `maestri/plano-workspace.md`, aprovado em 10/10 com o fechamento às 21h30. Feitos: a nota "Agora" (passo 1) e as rotinas (passo 3). A cópia local do projeto está no `master`.

1. Passo 2: primeira tarefa na nuvem por um terminal Shell (`claude --cloud`), para testar o caminho e ajustar a skill `despachar-nuvem`. Espera a escolha do próximo plano (5C, 5D, 5G ou 5H; recomendado 5G).
2. Passo 4: chave SSH para o VPS. Espera o ok para o SSH e a troca da senha de root.
3. Passos 5 e 6: primeiro deploy por aqui (a 5F) e atualizar `maestri/papeis/curador.md` e `maestri/configurar-no-windows.md`.
