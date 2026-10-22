---
tipo: decisao
data: 2026-10-21
status: valendo
fonte: conversa de 20 e 21/10 (queixa de uma assinante; "aprovo, quando a trama terminar pode fazer o deploy")
---
# Edição livre da mensagem: o que ela escreve é o que sai

**Decisão:** a edição no exemplo se aplica sobre o modelo, linha a linha, sem a IA: a linha que ela muda fica exatamente como ela escreveu, a linha que ela apaga sai e não volta, e o que o exemplo não mostra fica como estava. Os valores da peça (nome, preços, percentual, tamanhos, cupom, código, link) viram variável onde ela os escreveu, no formato dela ("R$429", "PP P M G GG"). Só o link é obrigatório; tirar o código ou o cupom dá um aviso que não impede. O cupom e o preço com cupom são variáveis separadas, sem o "no carrinho" obrigatório. Os textos padrão passam a "🎁 Código: X" e "🎟️ Cupom: X" para todas as contas (as mensagens que cada uma editou não mudam). O "pedir ajuste" pela IA não repõe o que ela tirou. Toda queixa de assinante sobre a mensagem vira teste do caminho inteiro (exemplo → modelo → mensagem) antes do conserto.

**Por quê:** a assinante não conseguia tirar o código repetido (Bazar e reloginho), mudar a ordem do "de/por" nem tirar o "no carrinho" (Liqui). Quatro camadas repunham o que ela tirava: os avisos "sempre saem", a IA reescrevendo o modelo, as linhas obrigatórias postas de volta depois da IA e a linha do cupom como frase pronta.

**Onde entrou:** `ferramenta-grupos`, Trama na `claude/edicao-livre` (spec `docs/superpowers/specs/2026-10-21-edicao-livre-design.md`, regra da queixa no `AGENTS.md` e no guia `mensagem.md`); `master` e produção em `ad40b3b` desde 21/10, 9h10.

**Alternativas descartadas:** refazer o modelo inteiro a partir do texto do exemplo (proposta do Curador): apagaria das outras peças o que o exemplo não mostra (o "de", o convite, o cupom). Preço e tamanhos no formato do sistema: ela teria a mesma queixa.
