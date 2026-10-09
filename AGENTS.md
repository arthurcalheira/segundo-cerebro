# Segundo cérebro — Vitrinista

Vault do Obsidian do projeto Vitrinista (código em `arthurcalheira/ferramenta-grupos`, pasta irmã `../ferramenta-grupos`). Lido e escrito por agentes (Claude Code, Codex) orquestrados no Maestri, no notebook Windows, e por sessões do Claude Code na nuvem.

## Onde mora cada verdade

- **Código e estado técnico ficam no projeto**, não aqui: `STATE.md`, `AGENTS.md`, `PRODUCT.md`, `.claude/guides/` e `docs/` de `ferramenta-grupos`. O vault aponta para eles pelo caminho e nunca copia o conteúdo. Mapa: [[vitrinista]].
- **O vault guarda o que não é código:** decisões de produto e negócio, pendências fora do código, pesquisa (concorrentes, programas de afiliados, preços), lançamento e conteúdo, ideias e o diário do que cada agente fez.
- Decisão que muda o código entra no projeto pelo agente que trabalha nele (spec, guia ou `STATE.md` de lá). Aqui fica a nota da decisão, dizendo onde ela entrou.

## Pastas

| Pasta | O que vai |
|---|---|
| `00-inbox/` | Captura crua. Qualquer agente cria arquivo novo aqui; só o Curador move e organiza (skill `processar-inbox`). Nota criada no Obsidian também nasce aqui. |
| `10-vitrinista/` | `vitrinista.md` (mapa do projeto), `pendencias.md`, `ideias.md`, `sessoes-nuvem.md` e `decisoes/` (uma nota por decisão) |
| `20-pesquisa/` | Uma nota por assunto pesquisado, com fontes e data |
| `30-diario/` | Uma nota por dia (`AAAA-MM-DD.md`), uma linha por entrega, sob o nome do agente |
| `90-arquivo/` | O que saiu de uso (decisão revogada, pesquisa vencida, pendência resolvida há mais de um mês) |
| `maestri/` | Papéis dos terminais e a configuração no Windows |
| `templates/` | Modelos de diário, decisão e pesquisa |

## Como escrever

- Português do Brasil. Nome de arquivo em minúsculas com hífen; nota com data começa por `AAAA-MM-DD-`.
- Link entre notas com `[[nome-da-nota]]`. Arquivo do projeto pelo caminho, em código: `ferramenta-grupos/STATE.md`.
- Decisão, pesquisa e pendência dizem a fonte (conversa, arquivo do projeto, site) e a data. O que não foi confirmado vai marcado como não confirmado.
- Nada de número, depoimento ou resultado inventado (princípio "prova real ou nenhuma" do `PRODUCT.md`).
- Sem segredos (tokens, senhas, `.env`) e sem dados pessoais de terceiros (telefone, CPF, e-mail).

## Quem faz o quê no Maestri

- **Curador**: terminal com o modo Maestro, Claude Code aberto neste vault. Organiza o inbox, mantém mapa, pendências e decisões, escreve o diário e despacha trabalho pesado para a nuvem. Papel: `maestri/papeis/curador.md`.
- **Executor**: Claude Code ou Codex aberto em `ferramenta-grupos`. Trabalha no código pelas regras de lá e, ao fim de cada entrega, cria uma nota no `00-inbox/` daqui. Papel: `maestri/papeis/executor.md`.
- **Sessões na nuvem** (`claude --cloud`): trabalham no repositório do projeto e não escrevem aqui. O Curador registra cada uma em `10-vitrinista/sessoes-nuvem.md` e traz o resultado (skill `despachar-nuvem`).
- No máximo dois agentes locais ao mesmo tempo: o notebook tem 3,7 GB de RAM (`ferramenta-grupos/AGENTS.md`). O que não couber vai para a nuvem.

## Sincronização

- O vault é um repositório git. No notebook, o plugin Obsidian Git faz commit e sync sozinho enquanto o Obsidian está aberto; agentes locais não fazem commit aqui.
- Sessão na nuvem que escrever no vault só cria arquivo novo no `00-inbox/` e faz commit e push ao terminar: o container some no fim da sessão, e editar arquivo existente brigaria com o sync do notebook.

## Skills (`.claude/skills/`)

O Codex não carrega skills: leia o `SKILL.md` correspondente como instrução.

- `processar-inbox`: esvaziar o `00-inbox/` nas pastas certas (Curador).
- `fechar-sessao`: registrar o que a sessão produziu antes de encerrar (qualquer agente).
- `despachar-nuvem`: mandar uma tarefa do projeto para uma sessão na nuvem e trazer o resultado (Curador).
