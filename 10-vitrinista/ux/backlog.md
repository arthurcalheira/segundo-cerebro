# Fila de UX

Achados do agente UX na produção (`openbot/papeis/ux.md`). O Gerente faz a triagem: aprovado vai para a Engenharia; descartado fica com o motivo.

Status: `aberto` → `aprovado` → `mandado` → `resolvido`, ou `descartado (motivo)`.

## Varreduras

| Jornada | Última varredura |
|---|---|
| 1. Primeira impressão | 2026-10-25 (parcial: `/assinar` não avaliável com a conta de cortesia) |
| 2. Começar a usar | 2026-10-25 |
| 3. O dia a dia | — |
| 4. Conta | — |

Nota de medição: `set_environment` com 390 de largura rendeu 375 px de área útil (a barra de rolagem ocupa 15 px). As medidas de toque e quebra de linha abaixo são de 375 px.

## Achados

### UX-001 · alta · resolvido (no ar em 25/10, 75b1ef77)
- Tela: vendas (`usevitrinista.com.br`), seção Planos, celular (390) e desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: o plano vem com "Anual" marcado e o preço grande diz "R$ 149 por mês". Quem lê só o número entende que paga por mês, sem prazo. O compromisso de 12 meses e a multa de 20% das parcelas que faltam só aparecem na 4ª pergunta do FAQ (fechada) e no link "Compromisso do 12x" do rodapé. O desconto do seletor diz "até 25%", mas dois dos três planos dão 17%. A etiqueta "ANUAL" e o "até 25% de desconto" estão em 13 px.
- Critério: heurística (prevenção de erro, linguagem da cliente), texto
- Conserto sugerido: no cartão do plano, junto do preço, uma linha curta dizendo que o 12x é compromisso de 12 meses (com o link do termo); mostrar o desconto real de cada plano em vez de "até 25%"; subir a etiqueta e o desconto para pelo menos 14 px.

### UX-002 · alta · resolvido (no ar em 25/10, 75b1ef77)
- Tela: vendas, seção Perguntas, celular (390) e desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: o subtítulo do FAQ diz "Textos de exemplo; os termos definitivos entram com os documentos legais." e logo abaixo as respostas falam de multa de 20%, reembolso em 7 dias e cancelamento. A cliente não sabe se vale o que leu e a dúvida chega bem na hora de pôr o cartão.
- Critério: texto, heurística (confiança, consistência)
- Conserto sugerido: tirar a frase de "textos de exemplo" se as respostas já são as definitivas; se não são, não mostrar valor e prazo como definitivos.

### UX-003 · média · aberto (segunda rodada)
- Tela: vendas, celular (390)
- Visto: 2026-10-25
- O que atrapalha: a página tem 8.745 px (cerca de 10 telas). Os três planos repetem listas de 5 a 9 itens, e Maison e Atelier só se diferenciam em número de WhatsApp, grupos, vitrine por número e atendimento; a cliente precisa comparar item por item rolando 2.000 px. Antes dos planos há ainda uma seção inteira (cerca de 980 px) sobre instalar o painel como app, quando ela nem assinou.
- Critério: densidade
- Conserto sugerido: mostrar por plano só o que muda em relação ao plano abaixo ("tudo do Essencial, mais…"); levar a seção "No celular" para depois dos planos ou reduzir a uma linha.

### UX-004 · média · aberto (segunda rodada)
- Tela: vendas, topo, celular (390)
- Visto: 2026-10-25
- O que atrapalha: a primeira tela mostra o título, o botão e uma ilustração de flores e frutas, sem nada do produto. O exemplo de mensagem pronta, que é o que a afiliada quer ver, só aparece a cerca de 2.430 px de rolagem, depois de lojas, benefícios e passos.
- Critério: hierarquia
- Conserto sugerido: trazer o exemplo da mensagem (ou uma versão curta dele) para perto do botão do topo, no lugar ou ao lado da ilustração.

### UX-005 · média · aberto (segunda rodada)
- Tela: `/entrar`, celular (390) e desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: quem esqueceu a senha lê "Escreva para contato@usevitrinista.com.br" e precisa sair do site, abrir o e-mail e esperar. O atendimento da própria conta funciona por WhatsApp todos os dias, 9h às 21h, mas essa tela só oferece e-mail.
- Critério: heurística (controle do usuário, saída de erro), clareza de ação
- Conserto sugerido: recuperação de senha por link no e-mail; enquanto isso não existe, oferecer também o WhatsApp do atendimento nessa linha.

### UX-006 · média · resolvido (no ar em 25/10, 75b1ef77)
- Tela: botões "Começar teste grátis" da vendas e `/criar-conta`, celular (390)
- Visto: 2026-10-25
- O que atrapalha: todos os botões da vendas dizem "Começar teste grátis de 7 dias · Teste de 7 dias no cartão. Nada é cobrado hoje" e levam a `/criar-conta` (os dos planos com `?plano=essencial|maison|atelier`). Essa tela se chama só "Criar conta", com o subtítulo "A sua vitrine no WhatsApp, arrumada todo dia." (a vendas usa outra frase: "Pare de montar cada mensagem do seu grupo de ofertas."). Ela não repete a promessa do teste, não diz em que momento o cartão entra nem mostra que plano foi escolhido (não conferi o plano: a aba logada redireciona a URL com `?plano=`).
- Critério: heurística (consistência, status do sistema), texto
- Conserto sugerido: repetir no topo do formulário "Teste de 7 dias, nada é cobrado hoje" e o plano escolhido; usar a mesma frase de promessa nas duas telas. Conferir antes se o cadastro está mesmo fechado em produção (o papel diz que sim, mas o formulário aparece completo; não enviei).

### UX-007 · baixa · resolvido (no ar em 25/10, 75b1ef77)
- Tela: `/entrar`, `/criar-conta` e vendas (rodapé), celular (390)
- Visto: 2026-10-25
- O que atrapalha: links dentro de frase têm 15 px de fonte e 20 px de altura, abaixo dos 44 px de toque: "Criar conta" em `/entrar` (76×20), "Entrar" em `/criar-conta` (42×20), o e-mail de contato (195×20) e o logo do topo da vendas (96×36). Na hora de errar o dedo, a cliente abre a tela errada.
- Critério: toque (44 px)
- Conserto sugerido: dar área de toque de 44 px a esses links (padding vertical), sem mudar o texto.

### UX-008 · alta · aberto
- Tela: `/configurar/mensagem` (passo 4 de 5), desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: a tela quebra. A coluna do assistente tem 408 px, mas ela tenta mostrar duas colunas: os cartões "Tenho mensagens que já mandei" e "Ainda não tenho" ficam espremidos em 115 px de largura (texto em 3 a 5 palavras por linha) e a Prévia (384 px) cai por cima deles. O título "Como você quer começar?" se sobrepõe a "Prévia". Medido: cartões em `left` 472, Prévia em `left` 496. Quem abre o assistente no computador não consegue ler nem escolher com segurança. No celular a tela está certa.
- Critério: hierarquia, clareza de ação
- Conserto sugerido: nessa tela, uma coluna só (cartões em cima, Prévia embaixo) em qualquer largura, como já é no celular.

### UX-009 · média · aberto
- Tela: `/configurar/whatsapp` (passo 5 de 5, "Tudo pronto para conectar"), celular (390)
- Visto: 2026-10-25
- O que atrapalha: o resumo põe ✓ verde nas quatro linhas e diz "Tudo pronto", mas a primeira diz "Lojas: Nenhuma marcada". Sem loja não sai peça nenhuma. A cliente que pulou o passo 1 lê que está tudo certo. Outra linha diz "cerca de 32 peças por dia" quando o passo 2 oferecia 10, 20, 30 ou 40 (padrão 30): a conta não bate com o que ela escolheu.
- Critério: heurística (status do sistema, consistência)
- Conserto sugerido: ✓ só no que foi respondido; "Lojas: nenhuma marcada" com aviso (cor de atenção) e título "Falta escolher as lojas" em vez de "Tudo pronto"; mostrar "30 peças por dia" igual ao botão escolhido.

### UX-010 · média · aberto
- Tela: `/conexao`, sem número conectado, celular (390) e desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: a única coisa a fazer na tela é marcar a caixa do termo de riscos. Mesmo assim o "Como funciona" tem 5 passos (cerca de 140 palavras) que falam de botões que ainda não existem na tela ("Conectar com código", "Conectar por QR", "Também enviar", "Adicionar número") e do envio automático. O passo 5 manda "ligar o envio nas horas de atuação das Regras", mas o menu não tem "Regras" (tem "Lojas e seções" e "Horários e ritmo").
- Critério: densidade, texto (linguagem da cliente)
- Conserto sugerido: no estado sem número, mostrar só o passo 1 e, depois de conectar, os seguintes; trocar "Regras" pelo nome real do menu.

### UX-011 · baixa · aberto
- Tela: `/conexao`, rodapé, celular (390) e desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: "Esta plataforma usa a Evolution API para se conectar ao WhatsApp." A cliente não sabe o que é Evolution API; a frase só preocupa logo ao lado do aviso de bloqueio de número.
- Critério: texto (palavra técnica)
- Conserto sugerido: tirar a frase da tela da cliente (deixar nos Termos) ou trocar por "A conexão com o WhatsApp não é oficial", que já está no aviso acima.

### UX-012 · baixa · aberto
- Tela: `/configurar/*` (passos 1 a 5), celular (390)
- Visto: 2026-10-25
- O que atrapalha: (a) os links "Mudar" do resumo têm 47×24 px, abaixo dos 44 px de toque; (b) os botões 10/20/30/40 do passo 2 têm 42 px de altura; (c) no passo 2 a barra fixa de baixo (125 px, Continuar + Voltar + Pular) cobre "Quantas peças por dia?", a segunda pergunta, na primeira tela; (d) no passo 4 o Continuar fica no meio da página, abaixo dos cartões, e a barra fixa só tem Voltar e Pular; nos outros passos o Continuar está na barra. A cliente procura o botão em lugares diferentes.
- Critério: toque (44 px), clareza de ação, consistência
- Conserto sugerido: área de toque de 44 px nos itens (a) e (b); no passo 4, Continuar na barra fixa como nos outros; no passo 2, reduzir a barra fixa para o Continuar com Voltar ao lado.

## Medido e sem achado (2026-10-25)

- Jornada 2: contraste WCAG calculado sem falha em `/configurar/*` e `/conexao` (o texto "Passo N, adiante" lido só por leitor de tela não conta). Campos e botões principais de 44 a 48 px. Sem rolagem lateral em 375 px.

- Contraste WCAG da vendas e de `/entrar`: o menor é 4,86:1 (creme sobre vermelho, passo 1, 17 px); os demais passam de 5,6:1.
- Campos de `/entrar` e `/criar-conta`: 44 a 46 px de altura, fonte de 16 px, `autocomplete` correto, botão principal de 48 px.
- `/assinar` com a conta de cortesia (Atelier): mostra só "Sua conta não paga assinatura" e o botão "Ir para o Início". O fluxo de assinar e pagar não foi avaliado; precisa de conta sem cortesia.
