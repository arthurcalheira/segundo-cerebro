# Instalar pelo agente

Roteiro para um Claude Code no notebook Windows fazer a configuração inteira. Quem usa só abre o Claude Code na pasta que contém `ferramenta-grupos` e cola:

> Leia https://github.com/arthurcalheira/segundo-cerebro/blob/claude/magical-fermi-mfb4ah/maestri/instalar-pelo-agente.md e siga o roteiro.

## Para o agente

Faça tudo o que der por comando. Peça a quem usa só o que exige clique (instalador com aviso do Windows, janela do Obsidian, canvas do Maestri), um passo por vez. No fim, diga o que foi feito e o que ficou.

1. **Pastas.** Ache a pasta de `ferramenta-grupos`. Clone `https://github.com/arthurcalheira/segundo-cerebro` ao lado dela, como `segundo-cerebro`. Se já existir, `git pull`.
2. **Obsidian.** Se não estiver instalado: `winget install --id Obsidian.Obsidian -e`. Sem winget, baixe o instalador de https://obsidian.md.
3. **Plugin Obsidian Git, sem cliques.**
   - Baixe `main.js`, `manifest.json` e `styles.css` da última release de https://github.com/Vinzent03/obsidian-git/releases para `segundo-cerebro/.obsidian/plugins/obsidian-git/`.
   - Grave `segundo-cerebro/.obsidian/community-plugins.json` com `["obsidian-git"]`.
   - Leia os `DEFAULT_SETTINGS` no `main.js` baixado e grave `.obsidian/plugins/obsidian-git/data.json` com: commit-and-sync automático a cada 10 minutos, pull ao abrir o Obsidian e mensagem de commit `vault: {{date}}`. Use os nomes de chave que o `main.js` mostrar; não chute.
4. **Maestri.** Se não estiver instalado: `winget search maestri`. Se não houver pacote, abra https://www.themaestri.app no navegador e peça a quem usa para baixar e instalar a versão Windows.
5. **Abrir o vault (quem usa).** Peça: abrir o Obsidian → "Abrir pasta como cofre" → `segundo-cerebro` → confiar no autor, para ligar os plugins. Confira depois: o arquivo `.obsidian/plugins/obsidian-git/data.json` continua lá e o Obsidian não mostrou erro do plugin.
6. **Canvas (quem usa).** Peça, no Maestri:
   - workspace "Vitrinista" com a pasta de trabalho `segundo-cerebro`;
   - um terminal na pasta `segundo-cerebro` com o comando `claude -n curador --add-dir ../ferramenta-grupos --append-system-prompt-file maestri/papeis/curador.md`;
   - na aba Details desse terminal, marcar **Maestro**.
7. **Executor (Curador).** Quando o Curador abrir, ele recruta o Executor pelo modo Maestro: pasta `ferramenta-grupos`, comando `claude -n executor --add-dir ../segundo-cerebro --append-system-prompt-file ../segundo-cerebro/maestri/papeis/executor.md`, ligado ao Curador. Se o recrutamento não aceitar comando nem pasta, peça a quem usa para criar esse terminal à mão e puxar a linha até o Curador.
8. **Primeira rodada (Curador).**
   - Veja onde o Maestri gravou os dados do workspace e ponha no `.gitignore` o que for interno dele.
   - Corrija o `STATE.md`: o repositório fica **público** por escolha confirmada em 09/10, e a branch padrão no GitHub é `claude/magical-fermi-mfb4ah`. Tire "Deixar o repositório privado" do próximo passo e marque como feito o que este roteiro fez.
   - Escreva uma linha no diário do dia.

Se um passo falhar, pare nele, diga o erro e o que tentou. Não pule para o seguinte.
