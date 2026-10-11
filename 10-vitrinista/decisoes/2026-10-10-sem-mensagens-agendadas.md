---
tipo: decisao
data: 2026-10-10
status: valendo
fonte: conversa com o Curador, 10/10/2026 à noite ("vamos tirar essa ideia dos planos então")
---
# Mensagens agendadas (5D) saem dos planos

**Decisão:** a 5D (mensagens agendadas: bom dia, regras do grupo, cupom) não será construída e sai da oferta do Atelier. A ordem dos planos passa a ser 5G (administração) e depois 5H (página de vendas e documentos).

**Por quê:**
- Não havia sinal de demanda: o recurso entrou como sugestão do agente para preencher o plano completo, sem pedido de afiliada nem pesquisa.
- É o item mais genérico da lista e não reforça o posicionamento do `PRODUCT.md` (moda de marca, texto no tom dela, curadoria, feito por quem vive disso).
- O caso do cupom já é coberto em parte: o sistema acompanha as promoções das lojas e escreve o cupom e o código nas mensagens das peças.
- Custaria um plano inteiro de cota e de tempo, na frente do que o lançamento precisa de fato (5G e 5H).
- O Atelier continua com o que justifica o preço: até 3 números, grupos sem limite, uma vitrine por número e atendimento direto.

**Onde entrou:** ainda não entrou no projeto. Lá, as mensagens agendadas aparecem na tabela dos planos da spec do lançamento (`docs/superpowers/specs/2026-10-09-plano-5-lancamento-design.md`), em `packages/core/src/billing/plans.ts` (`scheduledMessages`), em `apps/web/src/lib/plan-view.ts` (lista de recursos do plano) e no `STATE.md` ("Próximo plano: 5D"). Vai para o Construtor da 5G, no início da tarefa. Nada muda no ar por enquanto: o Atelier aparece como "em breve".

**Alternativas descartadas:** construir a 5D antes do lançamento (decidido mais cedo no mesmo dia, em [[2026-10-10-plano-5c-varios-numeros]], e revogado aqui); lançar só com Essencial e Maison.

**Não verificado:** se mandar o mesmo texto todo dia no mesmo horário pesa contra o número no WhatsApp, e se o próprio WhatsApp já oferece agendamento.
