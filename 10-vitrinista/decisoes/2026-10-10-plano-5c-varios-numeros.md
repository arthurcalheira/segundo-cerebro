---
tipo: decisao
data: 2026-10-10
status: valendo
fonte: respostas dadas à sessão do Construtor na nuvem, registradas no commit `66fec07` do projeto
---
# Plano 5C: vários números por conta

**Decisão:** o 5C foi o plano escolhido para vir depois da 5F, e a spec dele foi aprovada em 10/10 com estas respostas às sete perguntas de produto:

1. O Atelier continua "em breve" no 5C e passa a ser vendido quando o app for lançado.
2. O número em que se está mexendo é escolhido por um seletor no topo das telas, com um resumo de todos no Início.
3. De cada número: regras, lojas, fila e grupos. Códigos de afiliada, modelos de mensagem, fotos próprias e peças excluídas continuam da conta.
4. O número novo começa com uma cópia das regras do número 1.
5. No 5C não há "remover número": só desconectar e trocar de aparelho. Apagar a vaga fica para a 5G.
6. Ao descer do Atelier, quem assina escolhe qual número continua enviando; até escolher, continua o mais antigo. (A recomendação era o mais antigo, sem escolha.)
7. O mesmo grupo em dois números é proibido.

**Por quê:** as razões de cada item estão na spec. A 2, a 3, a 4, a 5 e a 7 seguiram a recomendação do Construtor.

**Onde entrou:** `ferramenta-grupos/docs/superpowers/specs/2026-10-10-plano-5c-varios-numeros-design.md`, na branch `claude/plano-5c-multi-numeros-a0ybgc` (ainda fora do `master`).

**Alternativas descartadas:** começar pela 5G (administração), que era a recomendação do Curador; vender o Atelier só depois da 5D; o número mais antigo continuar sem escolha.

**Consequência, confirmada na conversa com o Curador em 10/10:** a spec do lançamento diz que nada é vendido antes de existir, e o Atelier promete as mensagens agendadas (5D). Como o Atelier será vendido no lançamento, **a 5D é requisito do lançamento e é o plano seguinte ao 5C**. Depois vêm a 5G e a 5H. A ordem foi mantida mais tarde na mesma conversa ("mantém a ordem"), quando surgiu a ideia de adiantar a 5G: ela não roda em paralelo com o 5C (mesmos arquivos, mesma migração `0035`, mesma cota). Entrou no projeto pelo Construtor, no commit `ede1c49` da branch do 5C (`STATE.md`).
