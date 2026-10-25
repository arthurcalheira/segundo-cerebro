# Configurar no Windows

O vault no Obsidian e os agentes no OpenBot, no notebook. Os passos marcados **(você)** são cliques. Os marcados **(Gerente)** são pedidos ao Gerente no OpenBot. A versão do Maestri ficou em `90-arquivo/maestri/configurar-no-windows.md` e `90-arquivo/maestri/instalar-pelo-agente.md`.

Precisa do Git for Windows, do Claude Code e do OpenBot no notebook.

## 1. Pastas (Gerente)

Em `C:\Users\arthu\claude code`: o vault em `segundo-cerebro` (`https://github.com/arthurcalheira/segundo-cerebro`, branch `claude/magical-fermi-mfb4ah`), o projeto em `ferramenta grupos` (`https://github.com/arthurcalheira/ferramenta-grupos`, privado) e a junction `ferramenta-grupos` apontando para ele. Se já existirem, `git fetch`.

## 2. Obsidian (você)

1. "Abrir pasta como cofre" → `segundo-cerebro`, confiando no autor para ligar os plugins.
2. Plugin Obsidian Git (Vinzent03), com commit-and-sync a cada 10 minutos, pull ao abrir e mensagem `vault: {{date}}`. Já vem configurado em `.obsidian/`. O sync só roda com o Obsidian aberto.
3. A nota diária nasce em `30-diario/` pelo modelo, e as notas novas no `00-inbox/`.

## 3. OpenBot

1. **(você)** Agente **Gerente**, com a descrição "Orquestrar e ditar as tarefas dos outros agentes, sendo como um secretário/assistente meu" e acesso total ao computador.
2. **(Gerente)** Guardar na memória essencial onde estão o papel (`openbot/papeis/gerente.md`), o vault e o projeto, e a abertura do dia.
3. **(Gerente, com o seu ok)** Construtores: um agente por worktree (`ferramenta-grupos-<nome>`), com o papel `openbot/papeis/construtor.md` na descrição.
4. **(Gerente, com o seu ok)** As quatro rotinas de `openbot/plano-workspace.md`, cada uma testada uma vez. Antes, desligue as rotinas do Maestri, para não rodarem em dobro.
5. **(você)** Na primeira vez que o Gerente abrir o claude.ai no navegador do OpenBot, faça o login quando ele pedir.

## 4. Maestri

Desligado em 25/10; o que valia lá está em `90-arquivo/maestri/`. O `.maestri/` (fora do git) fica: guarda as tarefas mandadas até 25/10.
