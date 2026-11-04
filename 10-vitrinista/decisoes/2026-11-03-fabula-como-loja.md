---
tipo: decisao
data: 2026-11-03
status: valendo
fonte: conversa de 03/11 ("eu queria implementar o site da fábula no vitrinista"; "10% de desconto e frete grátis nas compras acima de 198"; "queria que tivesse uma pequena sessão infantil"; "sim"; "entra para todos")
---
# Fábula como loja

**Decisão:**
1. **Loja nova, na família da FARM:** "Fábula", com o código, o limite do plano e o teto do robô da FARM, como a FARM Etc ([[2026-10-23-farm-etc-como-loja]]). A Teen (FARM Futura) entra junto. Começa desligada para todas as contas; os textos próprios da FARM não são copiados. Sem Lojix e sem a coleção de reserva do reloginho.
2. **Mensagem:** 10% com o código e frete grátis acima de R$ 198 (na FARM continua R$ 399).
3. **Tamanhos:** bloco "Infantil" na tela de Tamanhos, só para quem marcou a Fábula. Sem infantil marcado, vai a Fábula inteira; sem tamanho de adulto marcado, as lojas de adulto passam inteiras (decisões do Gerente).
4. **Público:** em "Filtrar mais", Meninas, Meninos, Bebê e Teen. Nenhum marcado vale a Fábula inteira; as peças sem público (acessórios e básicos) entram em qualquer escolha. Guardado numa coluna nova das regras (migração 0074).
5. **Promoções:** reloginho, agenda, anúncios, banners, Bazar e Vitrine da Semana da Fábula. A Progressiva nunca vira promoção (decisão do Gerente, achado do QA), até a FARM dizer a regra.
6. **Zumzum:** botão "Zumzum 50% OFF" criado à mão no painel depois que a Fábula subir.

**Por quê:** a Fábula está no site da FARM, como a Etc, e o caminho da Etc já foi testado. Desligada, ela não manda roupa de criança a grupos de moda feminina. A mensagem não pode prometer desconto que o carrinho não dá.

**Onde entrou:** branch `claude/fabula-loja` do projeto (`9c20300b` em 03/11), spec em `docs/superpowers/specs/2026-11-03-fabula-loja-design.md`. Ainda não está no `master`: espera o QA e o aviso dela para subir.

**Alternativas descartadas:** a Fábula como parte da FARM, sem loja separada; um quinto público "Para todos"; deixar as peças sem público de fora quando há público marcado; a Fábula ligada para quem já tem a FARM.
