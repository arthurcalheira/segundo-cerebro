# Estado

**09/10/2026:** vault montado numa sessão do Claude Code na nuvem: estrutura, regras (`AGENTS.md`), skills (`processar-inbox`, `fechar-sessao`, `despachar-nuvem`), papéis do Maestri e guia do Windows. Nada foi testado no Obsidian nem no Maestri, que rodam no notebook Windows, fora do alcance da nuvem.

## Decisões

- **Vault separado do código**, com o projeto na pasta irmã `../ferramenta-grupos`. Abrir o repositório do projeto como vault faria o Obsidian varrer o `node_modules` num notebook de 3,7 GB, e o estado técnico já tem lugar (`STATE.md` de lá).
- **Código e estado técnico só no projeto; no vault, o que não é código.** O vault aponta para os arquivos do projeto e não copia.
- **No máximo dois agentes locais** (3,7 GB de RAM). Trabalho pesado vai para a nuvem com `claude --cloud`.
- **Sync pelo Obsidian Git**; agentes locais não fazem commit no vault. Sessão na nuvem só cria arquivo novo no inbox e faz push.

## Não confirmado (Maestri)

O site oficial é bloqueado pelo proxy do container da nuvem. O que segue veio de busca na web.

- Onde o Maestri grava as notas do canvas no Windows. Um guia de iniciante para macOS diz que é na pasta de trabalho do workspace.
- Se o modo Maestro funciona igual no Windows.
- Preço: as fontes divergem (US$ 18 pagos uma vez ou US$ 19 por mês).

## Próximo passo

1. Deixar o repositório privado e dar push.
2. No notebook: `maestri/configurar-no-windows.md`.
3. Primeira rodada do Curador: ver onde a nota do Maestri foi parar e ajustar o `.gitignore`.
