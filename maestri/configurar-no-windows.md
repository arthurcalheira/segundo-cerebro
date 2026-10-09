# Configurar no Windows

Configuração do vault no Obsidian e dos terminais no Maestri, no notebook. Os passos marcados **(você)** são cliques em aplicativos. Os marcados **(agente)** são pedidos para um Claude Code.

O notebook já tem o Git for Windows, o Claude Code e o clone de `ferramenta-grupos`, que é onde o projeto roda hoje.

## 1. Instalar (você)

- Obsidian: https://obsidian.md
- Maestri para Windows: https://www.themaestri.app (a documentação oficial diz que roda em macOS e Windows).

## 2. Clonar o vault (agente)

Abra um terminal na pasta que contém `ferramenta-grupos`, rode `claude` e cole:

> Clone https://github.com/arthurcalheira/segundo-cerebro nesta pasta, ao lado de ferramenta-grupos, e confira que segundo-cerebro/AGENTS.md existe.

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
3. Terminal **Executor**, na pasta `ferramenta-grupos`:
   ```
   claude -n executor --add-dir ../segundo-cerebro --append-system-prompt-file ../segundo-cerebro/maestri/papeis/executor.md
   ```
   Com o Codex no lugar do Claude Code, peça a ele que leia `../segundo-cerebro/maestri/papeis/executor.md` e siga o papel. Não foi testado se o Codex consegue gravar fora da pasta dele.
4. Puxe uma linha do Executor até o Curador.
5. Opcional: uma nota "Agora" no canvas, ligada aos dois, como quadro de status curto. O que for importante o Curador passa para o vault.

## 5. Primeira rodada (agente: Curador)

> Confira onde o Maestri gravou a nota "Agora" e os arquivos do workspace. Ponha no .gitignore o que for dado interno do Maestri e anote no STATE.md.

## Memória (3,7 GB)

Curador, Executor, Obsidian e Maestri juntos já ocupam boa parte da memória (cada Claude Code usa centenas de MB). Antes de `dev:up` (Postgres e Evolution), feche o Curador. Trabalho pesado vai para a nuvem pela skill `despachar-nuvem`.

## Pelo celular

Dentro do Curador, `/remote-control` deixa acompanhar e mandar mensagens pelo app do Claude. O notebook precisa ficar ligado.
