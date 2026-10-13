# Segundo cérebro — Vitrinista

Vault do Obsidian do projeto Vitrinista (código em `arthurcalheira/ferramenta-grupos`, desenvolvido em sessões do Claude Code na nuvem; cópia local na pasta irmã `../ferramenta-grupos`). Mantido pelo Curador, um Claude Code no Maestri, no notebook Windows.

## Onde mora cada verdade

- **Código e estado técnico ficam no projeto**, não aqui: `STATE.md`, `AGENTS.md`, `PRODUCT.md`, `.claude/guides/` e `docs/` de `ferramenta-grupos`. O vault aponta para eles pelo caminho e nunca copia o conteúdo. Mapa: [[vitrinista]].
- **O vault guarda o que não é código:** decisões de produto e negócio, pendências fora do código, pesquisa (concorrentes, programas de afiliados, preços), lançamento e conteúdo, ideias e o diário do que cada agente fez.
- Decisão que muda o código entra no projeto pelo agente que trabalha nele (spec, guia ou `STATE.md` de lá). Aqui fica a nota da decisão, dizendo onde ela entrou.
- Aqui não há build, lint nem teste: é um vault de notas. Os comandos do projeto estão no `AGENTS.md` de `ferramenta-grupos`.
- Onde paramos e o próximo passo do vault: `STATE.md`, na raiz (reescrito a cada fechamento).

## Pastas

| Pasta | O que vai |
|---|---|
| `00-inbox/` | Captura crua. Qualquer agente cria arquivo novo aqui; só o Curador move e organiza (skill `processar-inbox`). Nota criada no Obsidian também nasce aqui. |
| `10-vitrinista/` | `vitrinista.md` (mapa do projeto), `pendencias.md`, `ideias.md`, `sessoes-nuvem.md` e `decisoes/` (uma nota por decisão) |
| `20-pesquisa/` | Uma nota por assunto pesquisado, com fontes e data |
| `30-diario/` | Uma nota por dia (`AAAA-MM-DD.md`), uma linha por entrega, sob o nome do agente |
| `90-arquivo/` | O que saiu de uso (decisão revogada, pesquisa vencida, pendência resolvida há mais de um mês) |
| `maestri/` | Papéis dos terminais (`papeis/`), plano do workspace e das rotinas (`plano-workspace.md`), script do vigia (`scripts/`) e a configuração no Windows |
| `templates/` | Modelos de diário, decisão e pesquisa |
| `.maestri/` | Fora do git: rascunho de tarefa para a nuvem e a última leitura do vigia. Temporário vai aqui |

## Como escrever

- Português do Brasil. Nome de arquivo em minúsculas com hífen; nota com data começa por `AAAA-MM-DD-`.
- Diário, decisão e pesquisa nascem do modelo em `templates/` (frontmatter `tipo` e `data`; decisão tem `status: valendo` e "Onde entrou"; pesquisa tem `conferido`). O Obsidian cria a nota do dia em `30-diario/` com o mesmo modelo. Só o Obsidian troca `{{date:...}}` e `{{title}}`: agente que cria a nota pelo arquivo preenche os dois à mão.
- Link entre notas com `[[nome-da-nota]]`. Arquivo do projeto pelo caminho, em código: `ferramenta-grupos/STATE.md`.
- Decisão, pesquisa e pendência dizem a fonte (conversa, arquivo do projeto, site) e a data. O que não foi confirmado vai marcado como não confirmado.
- Nada de número, depoimento ou resultado inventado (princípio "prova real ou nenhuma" do `PRODUCT.md`).
- O repositório do vault é público: sem segredos (tokens, senhas, `.env`), sem dados pessoais de terceiros (telefone, CPF, e-mail) e sem detalhe de segurança do servidor (endereço IP, firewall, como as chaves são guardadas).

## Quem faz o quê no Maestri

- **Curador**: o único agente no notebook. Terminal com o modo Maestro, Claude Code aberto neste vault. Organiza o inbox, mantém mapa, pendências e decisões, escreve o diário, acompanha o projeto e manda tarefas para a nuvem. Papel: `maestri/papeis/curador.md`. O terminal do Maestri carrega o papel sozinho (`--append-system-prompt-file`); sessão aberta de outro jeito neste vault lê o arquivo antes de agir.
- **Executor = sessões do Claude Code na nuvem.** O código do `ferramenta-grupos` é feito lá, abertas pelo claude.ai ou pelo Curador (`claude --cloud`). Elas trabalham no repositório do projeto e não escrevem aqui. O Curador traz o resultado pelo `STATE.md` e pelas branches do projeto, e registra as que ele mesmo abriu em `10-vitrinista/sessoes-nuvem.md` (skill `despachar-nuvem`).
- **Cada sessão na nuvem tem uma função** (10/10), com o papel em `maestri/papeis/`: `construtor` (um plano de código, um por vez), `revisor` (lê a branch do construtor, sem editar), `conteudo` (textos de venda e lançamento) e `pesquisador`. As três primeiras rodam no projeto; o pesquisador roda neste vault e só cria arquivo novo no `00-inbox/`.
- `../ferramenta-grupos` no notebook é uma cópia para leitura e para mandar tarefas à nuvem. Desenvolver nela, só por pedido explícito na conversa (foi assim com a página de vendas e o painel, em 11 e 12/10); o pedido vale para aquele trabalho, e commit, merge, push e deploy pedem cada um o seu ok.

## Sincronização

- O vault é um repositório git. No notebook, o plugin Obsidian Git faz commit e sync sozinho enquanto o Obsidian está aberto; agentes locais não fazem commit aqui.
- A branch do vault é `claude/magical-fermi-mfb4ah` (não há `master`). Sincronizado quer dizer `git status` limpo e `git log origin/claude/magical-fermi-mfb4ah..HEAD` vazio. Com coisa parada, o Obsidian está fechado: `cmd /c start "" "obsidian://open?path=<pasta do vault>"`. Confira ao abrir e antes de mandar à nuvem uma sessão que leia o vault.
- O clone do projeto mora em `claude code\ferramenta grupos` (com espaço); `../ferramenta-grupos` é uma junction para ele. Caminho entre aspas em todo comando.
- Sessão na nuvem que escrever no vault só cria arquivo novo no `00-inbox/` e faz commit e push ao terminar: o container some no fim da sessão, e editar arquivo existente brigaria com o sync do notebook.

## Skills (`.claude/skills/`)

O Codex não carrega skills: leia o `SKILL.md` correspondente como instrução.

- `processar-inbox`: esvaziar o `00-inbox/` nas pastas certas (Curador).
- `fechar-sessao`: registrar o que a sessão produziu antes de encerrar (qualquer agente).
- `despachar-nuvem`: mandar uma tarefa do projeto para uma sessão na nuvem e trazer o resultado (Curador).
