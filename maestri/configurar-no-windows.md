# Configurar no Windows

Configuração do vault no Obsidian e dos terminais no Maestri, no notebook. Os passos marcados **(você)** são cliques em aplicativos. Os marcados **(agente)** são pedidos para um Claude Code.

Caminho mais curto: deixar um Claude Code fazer tudo por `maestri/instalar-pelo-agente.md`. Este guia é a versão à mão.

Precisa do Git for Windows e do Claude Code no notebook. O `ferramenta-grupos` é desenvolvido na nuvem; no notebook ele é só uma cópia para o Curador ler.

## 1. Instalar (você)

- Obsidian: https://obsidian.md
- Maestri para Windows: https://www.themaestri.app (a documentação oficial diz que roda em macOS e Windows).

## 2. Clonar o vault (agente)

Abra um terminal numa pasta de projetos (ex.: `Documentos\projetos`), rode `claude` e cole:

> Clone https://github.com/arthurcalheira/segundo-cerebro e https://github.com/arthurcalheira/ferramenta-grupos lado a lado nesta pasta (se ferramenta-grupos já existir em outro lugar, clone ao lado dele) e confira que segundo-cerebro/AGENTS.md existe.

## 3. Obsidian (você)

1. "Abrir pasta como cofre" → `segundo-cerebro`.
2. Configurações → Plugins da comunidade → Ativar → Procurar "Git" (autor Vinzent03) → Instalar → Ativar.
3. Nas opções do Git, ligue o commit-and-sync automático a cada 10 minutos e o pull ao abrir o Obsidian. Os nomes exatos das opções mudam com a versão do plugin. O sync só roda com o Obsidian aberto.
4. Já vem configurado na pasta `.obsidian/`: a nota diária nasce em `30-diario/` pelo modelo, e as notas novas nascem no `00-inbox/`.

## 4. Maestri (você)

1. Crie o workspace "Vitrinista" com a pasta de trabalho `segundo-cerebro`. Segundo um guia de iniciante escrito para macOS, o Maestri grava nessa pasta as notas do canvas e os dados do workspace. No Windows isso não foi confirmado.
2. Terminal **Curador**, na pasta `segundo-cerebro`:
   ```
   claude -n curador --add-dir ../ferramenta-grupos --append-system-prompt-file maestri/papeis/curador.md
   ```
   Nas configurações do terminal, aba Details, marque **Maestro**.
3. Opcional: uma nota "Agora" no canvas, ligada ao Curador, como quadro de status curto. O que for importante o Curador passa para o vault.

O código continua sendo feito nas sessões na nuvem; não há terminal de desenvolvimento no canvas.

## 5. Primeira rodada (agente: Curador)

> Confira onde o Maestri gravou a nota "Agora" e os arquivos do workspace. Ponha no .gitignore o que for dado interno do Maestri e anote no STATE.md.

## Pelo celular

Dentro do Curador, `/remote-control` deixa acompanhar e mandar mensagens pelo app do Claude. O notebook precisa ficar ligado.
