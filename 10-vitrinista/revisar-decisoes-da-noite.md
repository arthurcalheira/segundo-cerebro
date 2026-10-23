---
tipo: pendencia
data: 2026-10-22
---
# Decisões da noite de 22 para 23/10, para ela revisar

Ela foi dormir em 22/10 e deixou o Curador trabalhando, com a ordem da fila técnica: depois do que está em andamento (Trama: testes no GitHub; Tear: lembrete de pagamento abandonado), **1** abas de loja no Trocar, **4** regra de qual peça aceita qual cupom, **5** registro de atualizações para as assinantes, **2** Lojix automática e **3** cadastro manual de cupom ou reloginho. O Curador pode decidir por ela e anota aqui cada decisão, para ela confirmar ou mudar.

## Decisões

1. **Deploy na produção só com ela acordada.** Ela autorizou decidir, não disse nada sobre subir. O Curador junta cada entrega ao `master` só depois de conferir, sobe na cópia de teste e deixa a produção para quando ela confirmar. Mudar: se ela quiser que a próxima noite suba direto.
2. **Os 5 testes quebrados antes da fila.** A Trama entregou os testes no GitHub (`claude/testes-no-github`), e a primeira rodada acusou 5 testes quebrados no `master` (1 do banco, do cupom; 4 do robô da fila: Trocar, Pular, regras novas e reloginho que acaba). O CI fica vermelho até eles saírem, e os 4 do robô podem ser defeito de verdade na fila. A Trama conserta isso numa sessão nova antes das abas no Trocar; se for defeito no código, ela conserta o código, não o teste. Mudar: se ela preferir seguir a fila e deixar o CI vermelho.
