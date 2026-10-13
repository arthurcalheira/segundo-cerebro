---
tipo: decisao
data: 2026-10-13
status: valendo
fonte: conversa de 13/10/2026 (lista de ajustes dela; "cor de pausa. pode seguir e fazer tudo de uma vez")
---
# Ajustes de UX do painel

**Decisão:** onze ajustes pedidos por ela, com quatro escolhas feitas na conversa a partir da análise do Curador:

1. No Catálogo, o "Não enviar" vira um interruptor com o rótulo positivo "Robô pode enviar".
2. O Desligar do envio automático continua na cor de pausa, não vermelho, e ganha confirmação. Vermelho segue reservado para apagar e desfazer.
3. "Abrir catálogo", no bloco de quem monta a fila, é cheio no índigo: uma exceção à regra de que botão que leva a outra tela é contorno.
4. A loja é por grupo: o Início mostra "Lojas deste grupo" e a troca avisa o que acontece com a fila.

Os outros: "Adicionar à fila" cheio; filtros do Catálogo num botão com contador, etiquetas dos filtros ativos e ordenação; explicação fixa e aviso de primeira vez no "Usar minha foto"; número no formato +55 (71) 91234-5678; Histórico com check no "Saiu", loja da peça e "ver link"; um bloco só no modo "eu monto" da Fila; tema claro, escuro ou do sistema em Conta > Aparência.

**Por quê:** ela achou os controles pouco claros e pesados (botão grande para uma escolha de sim ou não, filtro escondido numa linha de texto, link por extenso no Histórico, dois blocos dizendo a mesma coisa na Fila). O vermelho no Desligar foi pedido por ela e trocado pela cor de pausa depois da análise: o Desligar só pausa, e o que evita o toque sem querer é a confirmação.

**Onde entrou:** `ferramenta-grupos`, commits `9b61489` a `eec9d85` (um por tela), no `master` e no servidor desde 13/10. A exceção do botão índigo está escrita em `ferramenta-grupos/docs/marca/README.md`, seção Botões; a escolha de tema, em `ferramenta-grupos/docs/marca/identidade-botanica/README.md` e no `AGENTS.md` do projeto. Ela conferiu o painel em 13/10 ("tudo certo com o painel").

**Alternativas descartadas:** Desligar vermelho; popup do "Usar minha foto" toda vez (ficou só na primeira, com a explicação fixa ao lado).
