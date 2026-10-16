---
tipo: decisao
data: 2026-10-15
status: valendo
fonte: conversa com o Curador, 15/10/2026 (brainstorming; aprovado com "ok")
---
# Menu do painel no estilo dos apps do Claude

**Decisão:** reformular a navegação do painel, no celular e no computador, parecida com os apps do Claude. O incômodo dela: poucos menus para muitas seções, sobretudo em Conta e Regras.

**Estrutura**
- Lateral principal: Início, Fila, Catálogo, Histórico e o grupo "Envio" (Lojas e seções, Horários e ritmo, Mensagem, Frases de chamada, Conexão).
- Menu da conta no canto de baixo (o nome ▾): Plano e pagamento, Dados e senha, Códigos de afiliada, Aparência, Atendimento, Administração (só a administradora) e Sair.
- Regras e Conta deixam de ser páginas longas: cada seção vira uma tela curta com endereço próprio. Hoje Regras junta "o que pode entrar", "quando e como sai", a mensagem, os modelos e as frases de chamada; Conta junta plano, atendimento, dados, senha, aparência e códigos.

**Computador:** lateral aberta (ícone e nome) com botão de recolher para uma faixa só de ícones; lembra a escolha. O seletor de número (Atelier, até 3) vai para o topo da lateral (número atual ▾), e a linha "Número:" sai das seis telas que a têm.

**Celular:** sai a barra do rodapé. No topo: ☰, o título da tela e, à direita, o ponto do estado do envio (verde enviando, amarelo pausado, vermelho desconectado), que leva à Conexão. O ☰ abre a lateral pela esquerda, com o seletor de número no topo e a conta embaixo.

**Visual:** cor só no ícone da tela aberta; os outros em cinza.

**Por quê:** as escolhas (a, b e c do estilo do Claude; lateral aberta e recolhível; seletor no topo; estado do envio na barra; cor só no ativo) foram dela, cada uma depois da recomendação do Curador. "Envio" na lateral principal, e não em configurações, porque a afiliada mexe nessas telas com frequência.

**Spec (16/10, madrugada):** escrita pela Trama (`51be08f`, `ferramenta-grupos/docs/superpowers/specs/2026-10-15-menu-estilo-claude-design.md`, telas em `2026-10-15-menu-telas/`). Aprovada pelo Curador em nome dela, que delegou a aprovação ao ir dormir ("peço que aprove a spec para mim"), depois de conferir as telas contra este desenho. As 7 decisões da spec, como a Trama recomendou: ponto cinza com o envio desligado; Atendimento para todas (e-mail; WhatsApp só no Atelier); o sobretítulo das telas só com o rótulo do grupo; documentos legais numa linha no pé do menu da conta; com um número só, uma linha de estado no lugar do seletor; pausado em açafrão só no ponto; "Recolher menu" no pé da lateral. Endereços novos: `/envio/lojas`, `/envio/horarios`, `/envio/mensagem`, `/envio/frases`, `/conexao`, `/conta/plano`, `/conta/dados`, `/conta/codigos`, `/conta/aparencia`, `/conta/atendimento`; `/regras`, `/conta` e `/ajustes` redirecionam.

**Onde entrou:** feito pela Trama na madrugada de 16/10, branch `claude/menu-estilo-claude` (`51be08f` a `38326e1`, 11 commits, sem push), worktree `claude code\ferramenta-grupos-menu`. Suíte da web, typecheck e `next build` verdes; conferido no navegador (320, 375, 1280, 1366×657; claro e escuro). Desvio da spec: o `PLAN_HREF` continua `/conta#plano` (o redirecionamento cobre). Ainda não está no `master`: push e merge esperam o ok dela; no merge com a 5H, o "Encerrar a conta" vira item do menu da conta, e a política de cookies precisa citar quatro cookies (sessão, número, tema e `vitrinista_lateral`). Depois da 5H, o Tear escreve a spec com as telas desenhadas pelo Sonnet e para para ela aprovar: `.maestri/tarefa-menu.md`.

**Alternativas descartadas:** as telas de Envio num menu de configurações; lateral sempre recolhida ou sempre aberta; manter a linha "Número:" em cada página; atalho da Fila ou nada no topo do celular; quadradinhos coloridos em todos os itens ou ícones de uma cor só.
