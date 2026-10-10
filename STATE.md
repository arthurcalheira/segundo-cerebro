# Estado

**09/10/2026:** vault montado numa sessão do Claude Code na nuvem: estrutura, regras (`AGENTS.md`), skills (`processar-inbox`, `fechar-sessao`, `despachar-nuvem`), papéis do Maestri e guia do Windows.

**10/10/2026:** instalado no notebook Windows pelo roteiro `maestri/instalar-pelo-agente.md`:

- [x] Pastas: `C:\Users\arthu\claude code\segundo-cerebro`, ao lado do clone que já existia em `claude code\ferramenta grupos` (com espaço, na branch `plano-4a`). A junction `claude code\ferramenta-grupos` aponta para ele, para que `../ferramenta-grupos` funcione como está escrito no vault.
- [x] Obsidian 1.14.4 e Maestri 0.21.5 já estavam instalados.
- [x] Obsidian Git 2.41.1 em `.obsidian/plugins/obsidian-git/`: commit-and-sync a cada 10 min (`autoSaveInterval`), pull ao abrir (`autoPullOnBoot`), mensagem `vault: {{date}}` (`commitMessage` e `autoCommitMessage`). As chaves foram tiradas dos `DEFAULT_SETTINGS` do `main.js`.
- [x] Vault aberto no Obsidian, com o plugin ativo.
- [x] Workspace "vitrinista" no Maestri, com o terminal `curador` (Maestro marcado) rodando `claude -n curador --add-dir ../ferramenta-grupos --append-system-prompt-file maestri/papeis/curador.md`. O terminal tinha subido só com `claude`; o comando foi corrigido no `workspace.json` com o Maestri fechado.

## Decisões

- **Vault separado do código**, com o projeto na pasta irmã `../ferramenta-grupos`. Abrir o repositório do projeto como vault faria o Obsidian varrer o `node_modules` num notebook de 3,7 GB, e o estado técnico já tem lugar (`STATE.md` de lá).
- **Código e estado técnico só no projeto; no vault, o que não é código.** O vault aponta para os arquivos do projeto e não copia.
- **O código é feito nas sessões na nuvem** (é assim que o projeto já trabalha). No notebook roda só o Curador, no Maestri; `../ferramenta-grupos` lá é cópia de leitura. Decidido em 10/10, depois do primeiro desenho com um Executor local.
- **Sync pelo Obsidian Git**; agentes locais não fazem commit no vault. Sessão na nuvem só cria arquivo novo no inbox e faz push.
- **Repositório público**, por escolha confirmada em 09/10. A branch padrão no GitHub é `claude/magical-fermi-mfb4ah`.

## Maestri no Windows

- **Confirmado em 10/10:** o Maestri grava o workspace (canvas, notas, terminais, snapshots) em `C:\Users\arthu\.maestri\workspaces\<id>\`, fora do vault. Na pasta de trabalho não apareceu nada. O `.gitignore` passou a ignorar `.maestri/` por precaução: a skill `maestri-manager` diz que recrutas com papel rodam em `.maestri/roles/<id>/`.
- **Não confirmado:** se o modo Maestro funciona igual no Windows (está marcado, mas não foi usado); preço (as fontes divergem: US$ 18 pagos uma vez ou US$ 19 por mês).

## Próximo passo

1. Conferir, depois de 10 min com o Obsidian aberto, se o Obsidian Git fez o primeiro commit `vault: …` e o push.
2. Usar o Curador no Maestri: primeira rodada de abertura do papel (`maestri/papeis/curador.md`).
