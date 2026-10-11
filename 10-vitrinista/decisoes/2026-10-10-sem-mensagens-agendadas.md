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

**Onde entrou:** na branch `claude/plan-5g-admin-lvjaat` do projeto, commit `61c60d4` (10/10, 22h53), no `master` desde 11/10 às 19h43 com a 5G e ainda fora do servidor: `scheduledMessages` saiu de `plans.ts`, `gate.ts` e `plan-view.ts` com os testes, a spec do lançamento ganhou a seção "Retirada da 5D" e o `STATE.md` passou a dizer 5G e depois 5H. No ar nada muda até o deploy, e mesmo depois o Atelier segue "em breve" em `/assinar`.

**Alternativas descartadas:** construir a 5D antes do lançamento (decidido mais cedo no mesmo dia, em [[2026-10-10-plano-5c-varios-numeros]], e revogado aqui); lançar só com Essencial e Maison.

**Não verificado:** se mandar o mesmo texto todo dia no mesmo horário pesa contra o número no WhatsApp, e se o próprio WhatsApp já oferece agendamento.
