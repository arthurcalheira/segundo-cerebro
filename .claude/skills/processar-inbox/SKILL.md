---
name: processar-inbox
description: Esvazia o 00-inbox do vault levando cada nota para o diário, as decisões, as pendências, a pesquisa ou as ideias, com links. Use quando o inbox tiver notas, ou quando pedirem para organizar o vault.
---

# Processar o inbox

Para cada arquivo em `00-inbox/`, do mais antigo para o mais novo:

1. Separe o que ele traz e leve cada parte para o seu lugar:
   - **Entrega** (o que foi feito): uma linha no diário do dia (`30-diario/AAAA-MM-DD.md`), sob o nome do agente. Se a nota do dia não existir, crie pelo `templates/diario.md`.
   - **Decisão**: nota nova em `10-vitrinista/decisoes/AAAA-MM-DD-<assunto>.md`, pelo `templates/decisao.md`. Se ela muda o código e ainda não entrou no projeto, escreva isso em "Onde entrou".
   - **Pendência fora do código**: item em `10-vitrinista/pendencias.md`, com fonte e data. Pendência de código ou de operação do VPS é do `STATE.md` do projeto: só cite no diário.
   - **Pesquisa**: nota em `20-pesquisa/` pelo `templates/pesquisa.md`, ou acréscimo à nota existente do mesmo assunto.
   - **Ideia**: uma linha com data em `10-vitrinista/ideias.md`.
2. Ligue as notas com `[[ ]]`: a decisão à pesquisa que a embasou, o diário à decisão.
3. Remova do inbox o arquivo processado (o git guarda o histórico). O que não couber em lugar nenhum fica no inbox, com o motivo no diário.
4. Pendência resolvida: marque `[x]` com a data. Depois de um mês, mova para `90-arquivo/`.
5. Termine com um resumo de até 5 linhas na conversa: o que entrou onde e o que ficou.
