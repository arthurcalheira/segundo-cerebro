---
tipo: decisao
data: 2026-10-13
status: valendo
fonte: "`ferramenta-grupos/STATE.md` e a spec na branch `claude/stripe-billing-i0eof8` (commit `f19b28a`, 13/10 às 21h28; a nuvem data de 14/10, em UTC). O Curador não viu a conversa da sessão: a aprovação é o que o Construtor registrou"
---
# Spec do Plano 12 aprovada, sem correção

**Decisão:** ela aprovou na sessão do Construtor a spec dos planos reformulados e da cobrança pela Stripe (`ferramenta-grupos/docs/superpowers/specs/2026-10-14-plano-12-stripe-e-planos-design.md`), sem correção. As propostas que a spec marcava como não confirmadas passam a valer:

- **Dois planos de código:** 12A (Stripe e anual, primeiro) e 12B (teste com o Maison, cancelamento com motivo e pausa, teto do Essencial).
- **CPF, celular e endereço saem de `/assinar`.** O "um teste por CPF" vira "um teste por cartão" (a impressão digital do cartão na Stripe). Um teste por conta e por número continuam.
- **Troca de plano:** subir vale na hora, pagando a diferença; descer e mudar entre mensal e anual valem no fim do período pago.
- **Renovação anual:** aviso por e-mail da Stripe e faixa no painel.
- **Pausa de 60 dias:** pula as duas mensalidades seguintes ao período pago; "Voltar agora" cobra no dia.
- **"Está caro" no Atelier mensal:** oferece o Atelier anual.
- **Teto do Essencial:** o Enviar agora também para no teto.
- **Motivos de cancelamento** aparecem na Administração.
- **A migração apaga o vínculo das assinaturas do sandbox do Asaas;** na hora de rodar no servidor, ainda pede a confirmação dela.

Decisões de origem: [[2026-10-13-stripe-no-lugar-do-asaas]], [[2026-10-13-plano-anual-maison-49-atelier-99]], [[2026-10-13-teste-com-maison-para-todos]], [[2026-10-13-cancelamento-e-reembolso]], [[2026-10-13-essencial-com-teto-de-30-pecas]].

**Por quê:** não registrado; a spec diz só "aprovada, sem correção".

**Onde entrou:** na spec e no plano do 12A (`docs/superpowers/plans/2026-10-14-plano-12a-stripe-e-anual.md`), na mesma branch. A execução do 12A começou (T1 de sete em `edd02e3`).

**Não confirmado, segundo a spec:** o Pix na fatura de assinatura de conta brasileira (a documentação da Stripe está bloqueada na rede da nuvem; fica para o modo de teste, e a spec tem um plano B); o texto dos Termos sobre o anual sem devolução (advogado).

**Alternativas descartadas:** nenhuma foi registrada.
