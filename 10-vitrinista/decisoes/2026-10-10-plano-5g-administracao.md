---
tipo: decisao
data: 2026-10-10
status: valendo
fonte: brainstorming na sessão do Construtor da 5G, 10/10/2026 à noite (o projeto data de 11/10, pelo relógio da nuvem). Lido pelo Curador na spec e no `STATE.md` da branch, commit `103817d`; a conversa em si não foi lida.
---
# Plano 5G: administração

**Decisão:** oito escolhas feitas no brainstorming da 5G, registradas na spec. A spec foi aprovada na sessão ("spec aprovada", segundo o commit `33d1346`, à 0h02 de 11/10), e o plano tem nove tarefas.

1. Atendimento do Atelier por dois canais, WhatsApp e e-mail. Os outros planos continuam só com o e-mail.
2. Horário do atendimento: todos os dias, das 9h às 21h.
3. Pausar em dois níveis separados: "Pausar envio" e "Suspender acesso".
4. Apagar uma vaga de número é da própria assinante, na Conexão, e não da administração.
5. As peças que já saíram por um número apagado continuam no Histórico, marcadas com o número apagado.
6. Plano de cortesia dado pela tela de administração (hoje só pela CLI).
7. Sem "ver como ela": a administração mostra uma ficha só de leitura da assinante.
8. "Precisa de atenção" no topo da tela de administração.

**Por quê:** os motivos de cada escolha não estão na spec e a conversa não foi lida. Não registrado.

**Onde entrou:** `ferramenta-grupos/docs/superpowers/specs/2026-10-11-plano-5g-administracao-design.md` e o `STATE.md`, na branch `claude/plan-5g-admin-lvjaat` (commit `103817d`). Construída, levada ao `master` em 11/10 às 19h43 (`aa655fb`) e no servidor desde as 19h48. O desenho completo (telas, colunas novas, registro das ações, demonstração) está lá.

**O que muda em decisões anteriores:**
- A [[2026-10-10-plano-5c-varios-numeros]] previa que apagar a vaga ficaria com a administração; passou para a assinante (item 4).
- O "definir canal e horário do atendimento direto", que estava em [[ideias]] como condição para vender o Atelier, está respondido (itens 1 e 2).

**Alternativas descartadas:** "ver como ela" (abrir o painel da assinante); pausa em um nível só; apagar a vaga pela administração.

**Número do atendimento:** escolhido em 11/10, "por enquanto", e posto no servidor no mesmo dia como variável de ambiente (`ATENDIMENTO_WHATSAPP`). Não vai para o repositório nem para este vault. Para trocar: mudar a linha no `.env` do servidor e rodar o `atualizar.sh` (passo 16 de `ferramenta-grupos/docs/implantacao.md`).
