---
tipo: decisao
data: 2026-10-25
status: valendo
fonte: conversa de 25/10, noite ("aceito as recomendações e pode subir")
---
# Os 8 itens maiores de UX, pelos caminhos que não desfazem decisões

**Decisão:** aprovadas as recomendações da Engenharia em `10-vitrinista/ux/proposta-2026-10-25.md`, em três levas, cada uma pela cópia de teste e com o ok dela para a produção:
1. **Primeira impressão (pequenos):** UX-014 A (os dois "primeiros passos" em sequência; o Início ganha "Lojas, horários e mensagem: já respondidos · Mudar" e `/configurar` encerrada mostra um resumo); UX-013 C ("Preparar agora" nas telas vazias antes de conectar); UX-020 A + C (conta nova sem o selo de novidades; a página mostra as 3 últimas).
2. **Telas de envio (médios):** UX-026 A, B e C (filtros finos recolhidos, tamanhos em Roupa e Calçado, "volta" vira "rodada de envios"); UX-027 C ("peças por dia" como padrão e "intervalo em minutos" como opção; horários de 30 em 30 min; percentuais do robô recolhidos); UX-025 C (prévia antes; "Usar em todos os seus grupos" e "Salvar só neste grupo").
3. **Por fim:** UX-024 A (placar "Hoje" sobe; cartões de promoção compactos, um por promoção, sem o vermelho); UX-017 (passos por aparelho, avisos em Essenciais e Outros, "Salvo" ao lado do aviso).

**Textos da primeira leva (confirmados por ela em 25/10, noite):** UX-014: a linha fica no cartão "Primeiros passos" do Início, fora da contagem: "Lojas, horários e mensagem: já respondidos · Mudar", ou "… no padrão · Preparar" quando ela pulou a configuração; `/configurar` encerrada mostra o resumo do passo 5 com "Configuração concluída." e "Voltar ao Início". UX-013: cartão "Conecte o WhatsApp" com "Lojas, horários e mensagem são ajustados por grupo. Conecte o número para escolher o grupo." e os botões "Conectar" e "Preparar agora", fora do Histórico e do Catálogo.

**Por quê:** todos os caminhos escolhidos mantêm a configuração guiada de 19/10 e a decisão 16 do 4H (um cartão por promoção no Início).

**Onde entrou:** ainda não entrou. A primeira leva foi para a Engenharia em 25/10, 22h25, no branch `claude/ux-primeira-impressao` (a partir do `master` `1393c2dc`).

**Alternativas descartadas:** UX-014 B (tirar `/configurar`) e UX-024 B (promoções num bloco único), que desfazem decisões dela; UX-026 B2 (juntar os formatos de tamanho), que mexe na escolha das peças: só com spec própria e o ok dela.
