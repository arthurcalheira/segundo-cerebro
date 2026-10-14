---
tipo: decisao
data: 2026-10-13
status: valendo
fonte: conversa com o Curador, 13/10/2026 ("30 peças por dia de limite")
---
# Essencial com teto de 30 peças por dia

**Decisão:** o Essencial passa a ter um teto de 30 peças enviadas por dia. O Maison e o Atelier ficam sem teto de plano.

**Por quê:** o Essencial existe para empurrar para o Maison, não para ser acessível (dito por ela no mesmo dia). O teto é por dia, e não por mês, para o grupo não ficar mudo no fim do mês (sugestão do Curador, aceita).

**Ressalva do Curador, dita na conversa:** hoje o sistema não limita envios e a tela Regras só avisa do risco de bloqueio acima de 40 por dia (`RECOMMENDED_MAX_PER_DAY` em `ferramenta-grupos/packages/core/src/rules/rules.ts`). Com o teto em 30, poucas contas devem bater nele; o Curador tinha sugerido entre 5 e 8. Quantas peças por dia um grupo típico usa não foi medido. Resposta dela: o teto fica em 30; ela envia cerca de 100 mensagens por dia em 10 grupos, e o aviso dos 40 sai ([[2026-10-13-sem-aviso-de-risco-acima-de-40]]).

**Onde entrou:** ainda não entrou. Entra como limite novo em `ferramenta-grupos/packages/core/src/billing/plans.ts`, no cartão do plano e nos Termos, no plano de código da troca de cobrança ([[2026-10-13-stripe-no-lugar-do-asaas]]). Durante o teste grátis não vale ([[2026-10-13-teste-com-maison-para-todos]]).

**Alternativas descartadas:** teto mensal; teto de 5 a 8 peças por dia.
