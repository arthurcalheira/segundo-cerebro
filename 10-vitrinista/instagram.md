---
tipo: plano
data: 2026-10-18
---
# Instagram @usevitrinista

Pedido de 18/10. Fase 1: o perfil que a vendedora abre depois de receber a DM ([[abordagem-vendedoras-dm]]). Fase 2, depois: conteúdo frequente para atrair vendedoras sozinho. Até 18/10, o perfil estava só reservado.

Decidido na conversa de 18/10: sem pessoa no perfil (nada de rosto ou voz); as DMs saem assinadas por **Iza, da Vitrinista**; a foto é o caju redondo (`ferramenta-grupos/docs/marca/identidade-botanica/kit/assets/uso/perfil-redondo-1080.png`). Nada da criadora ([[2026-10-11-criadora-sem-ligacao-publica]]); nenhum número de venda, assinante ou depoimento. As telas do produto vêm da cópia de teste, com dados de demonstração, e nunca aparecem como resultado.

Preços conferidos em `ferramenta-grupos/packages/core/src/billing/plans.ts` em 18/10.

## Perfil

- **Conta:** comercial, na categoria "Software" ou "Aplicativo".
- **Nome:** `Vitrinista | Grupo de ofertas` (o campo de nome entra na busca).
- **Bio** (escolhida em 18/10, sem os nomes das lojas a pedido dela; 134 de 150 caracteres contando como o Instagram):
  ```
  ⏳ Chega de montar oferta por oferta
  🛍️ A gente escolhe as peças e manda no seu grupo de ofertas, com o seu código
  🎁 7 dias grátis 👇
  ```
- **Link:** `https://usevitrinista.com.br`, sem UTM enquanto não houver Analytics.

## Destaques

Capas sem texto, um motivo botânico por capa. Arquivos em `.maestri/instagram/destaques/`, fora do git.

| Destaque | Stories |
|---|---|
| Como funciona | Os mesmos cartões do post "Como funciona" |
| Planos | Os mesmos cartões do post "Planos" |
| Teste grátis | O post "Teste grátis" e o link |

Um quarto destaque, "Dúvidas" (com o risco de bloqueio do número), saiu por decisão de 18/10: o assunto fica na conversa por DM ([[abordagem-vendedoras-dm]], objeções).

**Visual (decidido em 18/10):** posts e carrosséis **sem print de tela**. A explicação vem do design na identidade botânica: tipografia, números dos passos e motivos, sem tela nem celular desenhado. Antes disso, ela recusou também a animação em HTML do vídeo do app de 17/10 (`ferramenta-grupos/docs/marca/video-app/`, "horrível") e o Reels feito com prints do painel, que foi descartado. **Os textos não citam loja por nome** (pedido de 18/10).

## Grade de lançamento

A ordem é de publicação; o 5 e o 6 ficam fixados no topo.

1. **Planos** (carrossel)
   - Capa: "Três planos. Todos começam com 7 dias grátis."
   - **Essencial:** R$ 59,90 por mês, ou R$ 30 por mês no anual. 1 grupo, 1 loja, até 30 envios por dia, mensagem em modelo pronto.
   - **Maison:** R$ 99,90 por mês, ou R$ 49 por mês no anual. Até 3 grupos, as 2 lojas, envios sem limite, mensagem montada a partir das suas ofertas.
   - **Atelier:** R$ 179,90 por mês, ou R$ 99 por mês no anual. 3 números, cada um com as lojas e as regras dele, e atendimento direto.
   - Final: "O anual sai pela metade do preço e pode ser em 12x. Teste 7 dias antes de escolher: link na bio."
2. **"Peça esgotada não sai do seu grupo."**
   - Apoio: "O estoque de cada peça da fila é conferido a cada 15 minutos e de novo antes do envio."
3. **"Promoção nova no site? Entra sozinha na sua fila."**
   - Apoio: "A qualquer hora. Você não precisa ficar de olho."
4. **"A mensagem sai do seu jeito."**
   - Apoio: "Você cola 2 ou 3 ofertas que já mandou e as próximas saem no mesmo formato, com o seu código no link." (Maison e Atelier.)
5. **Como funciona** (carrossel, fixado)
   - Capa: "Como a Vitrinista cuida do seu grupo de ofertas"
   - "1. Conecte o número do seu grupo." Pelo QR, direto no painel.
   - "2. Diga as suas regras." Que lojas, que tipo de peça, que faixa de preço e em que horários.
   - "3. A Vitrinista monta e envia." No formato que você já usa, com o seu código no link; você confere a fila pelo celular, ou deixa no automático.
   - Final: "7 dias grátis para ver o seu grupo com oferta todo dia. Link na bio."
6. **Teste grátis** (fixado)
   - "7 dias para ver o seu grupo com oferta todo dia."
   - Apoio: "O cartão só é cobrado no 8º dia, e dá para cancelar pela própria conta antes disso."

## Arquivos (18/10, fora do git)

Tudo em `.maestri/instagram/`:
- `destaques/`: as 3 capas.
- `posts/`: a versão sem print, com `grade.png` simulando o perfil.
- `posts/com-prints/`: a versão recusada, guardada só como referência.
- `prints/`: os prints da cópia de teste e o `capturar.mjs`.

Os prints vêm da conta de demonstração da cópia de teste, com o número conectado pelo QR em 18/10. O Edge do notebook bloqueia o site de teste (Microsoft Family Safety); a captura usa o Chromium do Playwright.

**Ponto aberto:** o post 3 diz que a promoção entra sozinha na fila (decisão [[2026-10-17-promocao-sem-reloginho]]). Mas em 18/10 o Início da cópia de teste mostrou que a página da Liqui "não tem peças que o robô reconheça". Não foi conferido na produção.
