---
tipo: pendencia
data: 2026-10-22
---
# Decisões da noite de 22 para 23/10, para ela revisar

Ela foi dormir em 22/10 e deixou o Curador trabalhando, com a ordem da fila técnica: depois do que está em andamento (Trama: testes no GitHub; Tear: lembrete de pagamento abandonado), **1** abas de loja no Trocar, **4** regra de qual peça aceita qual cupom, **5** registro de atualizações para as assinantes, **2** Lojix automática e **3** cadastro manual de cupom ou reloginho. O Curador pode decidir por ela e anota aqui cada decisão, para ela confirmar ou mudar.

## Decisões

1. **Deploy na produção só com ela acordada.** Ela autorizou decidir, não disse nada sobre subir. O Curador junta cada entrega ao `master` só depois de conferir, sobe na cópia de teste e deixa a produção para quando ela confirmar. Mudar: se ela quiser que a próxima noite suba direto.
2. **Os 5 testes quebrados antes da fila.** A Trama entregou os testes no GitHub (`claude/testes-no-github`), e a primeira rodada acusou 5 testes quebrados no `master` (1 do banco, do cupom; 4 do robô da fila: Trocar, Pular, regras novas e reloginho que acaba). O CI fica vermelho até eles saírem, e os 4 do robô podem ser defeito de verdade na fila. A Trama conserta isso numa sessão nova antes das abas no Trocar; se for defeito no código, ela conserta o código, não o teste. Mudar: se ela preferir seguir a fila e deixar o CI vermelho.
3. **Reenvio no mesmo dia: opção B, e na produção ainda esta noite.** A Trama achou um defeito de verdade, desde 22/10 00h15 (`bef36ea`, o reenvio no mesmo dia que ela pediu na live): com o reenvio ligado, o robô e a escolha à mão escolhem uma peça que já passou pela fila hoje, mas o banco recusa em silêncio (uma peça por grupo e dia). Efeito nas assinantes: fila refeita com menos peças, Trocar que deixa a posição vazia, reposição curta quando o reloginho acaba; e o reenvio que ela pediu nunca funcionou para peça que esteve na fila do dia. Opções: A) reenvio de verdade (migração e uns 40 pontos do código: plano grande), B) a peça que esteve na fila de hoje volta a ser barrada enquanto o banco exigir uma por dia; o reenvio vale só para o que saiu por fora da fila (diff pequeno), C) voltar a regra de 07/10 inteira. **Escolhida a B**, e a A vira um plano para ela decidir. Como o defeito tira peças das filas das assinantes, o Curador muda a decisão 1 para este caso: sobe a B na produção à noite, antes das janelas de envio da manhã, depois do CI verde e da cópia de teste. Mudar: C, se ela preferir a regra antiga inteira; A, se o reenvio for importante já.

## Decididas por ela, para registro

- **Vídeo de lançamento** (22/10, noite): com o `/brag-slim`, mostrando o painel de verdade com dados fictícios da demonstração (exceção à decisão de 18/10, sem print, só para este vídeo); vertical e horizontal; cerca de 45 s; o roteiro de 7 cenas do Curador, passível de ajuste; feito por um agente no **Opus** (exceção à regra dos designs no Sonnet, porque a skill foi feita para o Opus 5.5). Saída em `ferramenta-grupos-catalogo/docs/marca/video-lancamento/`, sem commit.
