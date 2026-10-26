# Fila de UX

Achados do agente UX na produção (`openbot/papeis/ux.md`). O Gerente faz a triagem: aprovado vai para a Engenharia; descartado fica com o motivo.

Status: `aberto` → `aprovado` → `mandado` → `resolvido`, ou `descartado (motivo)`.

## Varreduras

| Jornada | Última varredura |
|---|---|
| 1. Primeira impressão | 2026-10-25 (parcial: `/assinar` não avaliável com a conta de cortesia) |
| 2. Começar a usar | 2026-10-25 |
| 3. O dia a dia | 2026-10-25 (produção, conta sem número: só estados vazios) · 2026-10-25 (cópia, com dados; sem fila com peças) |
| 4. Conta | 2026-10-25 (conta sem número) |

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

### UX-003 · média · conferido na produção em 26/10 (ecc93386): aprovado
- Conferência na produção (`usevitrinista.com.br`, 390 e 1366): o Maison mostra "Tudo do Essencial, mais:" com "Sem o limite de 30 peças por dia do Essencial" (a frase foi trocada, como a conferência de conteúdo pedia); o Atelier "Tudo do Maison, mais:" (3 números de WhatsApp, Grupos sem limite, Uma vitrine por número, Atendimento por WhatsApp); o Essencial com a lista completa; "Compromisso de 12 meses. Veja o termo" nos três; "ANUAL" com 14 px (antes 12). "No celular" vem depois dos planos, numa frase, e o link "Veja como instalar no iPhone e no Android" tem 307×44 px, fonte de 16 px, e leva a `/app` ("Use a Vitrinista como app no celular."). A página de 390 mede 7.972 px (8.745 antes) e a de 1366, 5.109 px. No 1366, entre o link e o título "Perguntas" sobram 144 px de vazio (acabamento).
- Conferência por captura (ecd2d480), antes da subida:
- Capturas `vendas-390-depois.png` e `vendas-1366-depois.png` (e as de antes): a página de 390 caiu de 8.745 para 7.693 px (cerca de 12%) e a de 1366 mede 5.087 px. O Maison traz "Tudo do Essencial, mais:" com 6 itens (Até 3 grupos por número; 2 lojas ao mesmo tempo; Sem limite de peças por dia; Mensagem do seu jeito: texto à mão e frases de chamada; Mensagem montada pela IA a partir das suas; Suas fotos nas mensagens) e o Atelier "Tudo do Maison, mais:" com 4 (3 números de WhatsApp; Grupos sem limite; Uma vitrine por número; Atendimento por WhatsApp, todos os dias). O Essencial segue com a lista completa; "Compromisso de 12 meses. Veja o termo" e os preços continuam. "No celular" vem depois dos planos, reduzido a uma frase e ao link "Veja como instalar no iPhone e no Android". A conferência: "Sem limite de peças por dia" é uma frase nova no Maison (a lista antiga do Maison não a tinha); precisa ser verdade no plano (a conta Atelier não tem limite diário, e o Essencial tem 30). Não vi o destino do link de instalação nem sua altura de toque (é um link de uma linha, uns 20 px de altura; medir depois da subida).
- Achado original:
- Tela: vendas, celular (390)
- Visto: 2026-10-25
- O que atrapalha: a página tem 8.745 px (cerca de 10 telas). Os três planos repetem listas de 5 a 9 itens, e Maison e Atelier só se diferenciam em número de WhatsApp, grupos, vitrine por número e atendimento; a cliente precisa comparar item por item rolando 2.000 px. Antes dos planos há ainda uma seção inteira (cerca de 980 px) sobre instalar o painel como app, quando ela nem assinou.
- Critério: densidade
- Conserto sugerido: mostrar por plano só o que muda em relação ao plano abaixo ("tudo do Essencial, mais…"); levar a seção "No celular" para depois dos planos ou reduzir a uma linha.

### UX-004 · média · conferido na produção em 26/10 (ecc93386): aprovado
- Conferência na produção (390 e 1366): o cartão de 3 linhas ("Vestido midi de linho · Por: R$ 482,90 (30% off) · lojaexemplo.com.br/vestido-midi?cod=EXEMPLO") com a legenda "Exemplo: a mensagem sai pelo seu número, com o seu código." fica logo abaixo do botão do topo, na primeira tela, nas duas larguras; no 390 no lugar da ilustração, no 1366 à esquerda com a ilustração à direita.
- Conferência por captura (ecd2d480):
- Capturas `vendas-390-depois-primeira-tela.png` e `vendas-1366-depois-primeira-tela.png` (contra as de antes): no 390 a ilustração saiu e, logo abaixo do botão "Começar teste grátis de 7 dias" e de "Teste de 7 dias no cartão. Nada é cobrado hoje.", há um cartão de 3 linhas ("🔥 Vestido midi de linho · ✅ Por: R$ 482,90 (30% off) · lojaexemplo.com.br/vestido-midi?cod=EXEMPLO") com a legenda "Exemplo: a mensagem sai pelo seu número, com o seu código." A mensagem pronta agora aparece na primeira tela, sem rolar. No 1366 a ilustração fica à direita e o cartão sob o botão, à esquerda, tudo na primeira tela (768 px). Resta como no original o exemplo longo em "Como funciona", mais abaixo (repete a ideia, com mais detalhe).
- Achado original:
- Tela: vendas, topo, celular (390)
- Visto: 2026-10-25
- O que atrapalha: a primeira tela mostra o título, o botão e uma ilustração de flores e frutas, sem nada do produto. O exemplo de mensagem pronta, que é o que a afiliada quer ver, só aparece a cerca de 2.430 px de rolagem, depois de lojas, benefícios e passos.
- Critério: hierarquia
- Conserto sugerido: trazer o exemplo da mensagem (ou uma versão curta dele) para perto do botão do topo, no lugar ou ao lado da ilustração.

### UX-005 · média · conferido na produção em 26/10 (ecc93386): aprovado
- Conferência na produção (`/entrar` deslogada, 390 e 1366): "Esqueceu a senha? Chame no WhatsApp (todos os dias, 9h às 21h). Ou escreva para contato@usevitrinista.com.br." O link "WhatsApp" mede 78×44 px, o e-mail 205×44 px e "Criar conta" 84×44 px, nas duas larguras, cada um em linha própria; a fonte é de 15 px. O link do WhatsApp leva a `wa.me` com a mensagem pronta "Olá! Esqueci a s…" (não abri). Sem rolagem lateral.
- Conferência por captura (40693494):
- Capturas `entrar-390-com-whatsapp.png` e `entrar-1366-com-whatsapp.png`: "Esqueceu a senha? Chame no WhatsApp (todos os dias, 9h às 21h). Ou escreva para contato@usevitrinista.com.br." com "WhatsApp" e o e-mail como links em verde sublinhado, os dois em linha (não em botão). O Gerente explicou que a cópia sem o número do atendimento mostra só o e-mail e que isso é o previsto. A captura não mostra a altura de toque (os 44 px pedidos): medir em `/entrar` da produção depois da subida.
- Conferência anterior na cópia (sem o número): a tela dizia só o e-mail, sem WhatsApp; era o previsto, não um defeito.
- Conferência (cópia, `/entrar` deslogada, 1366 com captura; o texto vem do servidor e é o mesmo em 390): a tela ainda diz "Esqueceu a senha? Escreva para contato@usevitrinista.com.br." e não tem WhatsApp (o HTML não tem nenhum link `wa.me`). O link do e-mail tem 205×44 px e "Criar conta" 84×44 px. Se o conserto estava na leva, ele não chegou nesta cópia (ou ainda não foi publicado).
- Achado original (abaixo):
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

### UX-008 · alta · resolvido (no ar em 25/10, 4b34fdd6)
- Tela: `/configurar/mensagem` (passo 4 de 5), desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: a tela quebra. A coluna do assistente tem 408 px, mas ela tenta mostrar duas colunas: os cartões "Tenho mensagens que já mandei" e "Ainda não tenho" ficam espremidos em 115 px de largura (texto em 3 a 5 palavras por linha) e a Prévia (384 px) cai por cima deles. O título "Como você quer começar?" se sobrepõe a "Prévia". Medido: cartões em `left` 472, Prévia em `left` 496. Quem abre o assistente no computador não consegue ler nem escolher com segurança. No celular a tela está certa.
- Critério: hierarquia, clareza de ação
- Conserto sugerido: nessa tela, uma coluna só (cartões em cima, Prévia embaixo) em qualquer largura, como já é no celular.

### UX-009 · média · resolvido (no ar em 25/10, 4b34fdd6)
- Tela: `/configurar/whatsapp` (passo 5 de 5, "Tudo pronto para conectar"), celular (390)
- Visto: 2026-10-25
- O que atrapalha: o resumo põe ✓ verde nas quatro linhas e diz "Tudo pronto", mas a primeira diz "Lojas: Nenhuma marcada". Sem loja não sai peça nenhuma. A cliente que pulou o passo 1 lê que está tudo certo. Outra linha diz "cerca de 32 peças por dia" quando o passo 2 oferecia 10, 20, 30 ou 40 (padrão 30): a conta não bate com o que ela escolheu.
- Critério: heurística (status do sistema, consistência)
- Conserto sugerido: ✓ só no que foi respondido; "Lojas: nenhuma marcada" com aviso (cor de atenção) e título "Falta escolher as lojas" em vez de "Tudo pronto"; mostrar "30 peças por dia" igual ao botão escolhido.

### UX-010 · média · resolvido (no ar em 25/10, 4b34fdd6)
- Tela: `/conexao`, sem número conectado, celular (390) e desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: a única coisa a fazer na tela é marcar a caixa do termo de riscos. Mesmo assim o "Como funciona" tem 5 passos (cerca de 140 palavras) que falam de botões que ainda não existem na tela ("Conectar com código", "Conectar por QR", "Também enviar", "Adicionar número") e do envio automático. O passo 5 manda "ligar o envio nas horas de atuação das Regras", mas o menu não tem "Regras" (tem "Lojas e seções" e "Horários e ritmo").
- Critério: densidade, texto (linguagem da cliente)
- Conserto sugerido: no estado sem número, mostrar só o passo 1 e, depois de conectar, os seguintes; trocar "Regras" pelo nome real do menu.

### UX-011 · baixa · resolvido (no ar em 25/10, e53edb2a) · segunda conferência 26/10: aprovado na cópia (42476b82)
- Segunda conferência (cópia, texto de `/conexao`): o rodapé agora diz "A conexão com o WhatsApp é feita por um programa de código aberto." e não aparece "Evolution" na página. Em 1366 e 390 o texto é o mesmo (só conferi o texto, não a captura do rodapé).
- Visto em produção (UX Teste, texto de `/conexao`): o rodapé agora diz "A conexão com o WhatsApp usa a Evolution API, um programa de código aberto." A frase continua citando "Evolution API", só que explicada. Se a intenção era tirar o nome, ainda está lá; se foi escolha (atribuição de código aberto), pode ficar.
- Tela: `/conexao`, rodapé, celular (390) e desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: "Esta plataforma usa a Evolution API para se conectar ao WhatsApp." A cliente não sabe o que é Evolution API; a frase só preocupa logo ao lado do aviso de bloqueio de número.
- Critério: texto (palavra técnica)
- Conserto sugerido: tirar a frase da tela da cliente (deixar nos Termos) ou trocar por "A conexão com o WhatsApp não é oficial", que já está no aviso acima.

### UX-012 · baixa · resolvido (no ar em 25/10, e53edb2a)
- Tela: `/configurar/*` (passos 1 a 5), celular (390)
- Visto: 2026-10-25
- O que atrapalha: (a) os links "Mudar" do resumo têm 47×24 px, abaixo dos 44 px de toque; (b) os botões 10/20/30/40 do passo 2 têm 42 px de altura; (c) no passo 2 a barra fixa de baixo (125 px, Continuar + Voltar + Pular) cobre "Quantas peças por dia?", a segunda pergunta, na primeira tela; (d) no passo 4 o Continuar fica no meio da página, abaixo dos cartões, e a barra fixa só tem Voltar e Pular; nos outros passos o Continuar está na barra. A cliente procura o botão em lugares diferentes.
- Critério: toque (44 px), clareza de ação, consistência
- Conserto sugerido: área de toque de 44 px nos itens (a) e (b); no passo 4, Continuar na barra fixa como nos outros; no passo 2, reduzir a barra fixa para o Continuar com Voltar ao lado.

### UX-013 · média · proposta pedida (Engenharia, 25/10) · segunda conferência 26/10: aprovado na cópia (42476b82)
- Segunda conferência (cópia, UX Cópia com Atelier, sem número, 390 e 1366): `/envio/lojas`, `/envio/horarios`, `/envio/mensagem` e `/fila` mostram "Conecte o WhatsApp. Lojas, horários e mensagem são ajustados por grupo. Conecte o número para escolher o grupo." com "Conectar" (verde, 46 px) e "Preparar agora" (contorno, 46 px) empilhados no celular e lado a lado no desktop. "Preparar agora" leva a `/configurar/lojas`, `/configurar/horarios`, `/configurar/mensagem` e `/configurar/fila`, a pergunta certa de cada tela. `/historico` e `/catalogo` têm só "Conectar". Contraste sem falha.
- Tentativa (cópia, conta nova sem plano, 390): `/envio/lojas` mostra só "Escolha seu plano. Sem plano: escolha um plano para enviar." com o botão "Escolher o plano"; o cartão "Conecte o WhatsApp" com "Preparar agora" só aparece com plano, então não deu para ver. Precisa de uma conta nova com plano (cortesia).
- Tela: `/envio/lojas`, `/envio/horarios`, `/envio/mensagem` (e `/fila`, `/historico`), conta sem número, celular (390) e desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: antes de conectar o número, essas telas só mostram o cartão "Conecte o WhatsApp. As regras são do grupo que recebe as peças: conecte o número e escolha o grupo." e o botão Conectar. A cliente nova não vê que lojas, horários e mensagem existem, nem como ficam, e o botão a leva ao termo de risco de banimento. Quem tem receio de arriscar o número não tem como espiar o produto antes. Além disso, a frase usa "regras", palavra que não está no menu (que diz "Lojas e seções", "Horários e ritmo", "Mensagem") nem explica nada à cliente.
- Critério: heurística (visibilidade do sistema, reconhecimento em vez de memorização), texto
- Conserto sugerido: mostrar essas telas com os padrões escolhidos e um aviso "Você muda isso depois de conectar" (só leitura), ou ao menos uma prévia do que a tela faz; trocar "As regras são do grupo…" por "Lojas, horários e mensagem são ajustados por grupo. Conecte o número para escolher o grupo."

### UX-014 · baixa · proposta pedida (Engenharia, 25/10) · segunda conferência 26/10: aprovado na cópia (42476b82), com a ressalva do UX-032
- Segunda conferência (cópia, UX Cópia, 390 e 1366): (1) "Pular a configuração" pelo botão do Início: "Lojas, horários e mensagem: no padrão · Preparar". (2) Pulando as 4 perguntas uma a uma e chegando ao passo 5: o Início continua "no padrão · Preparar"; o passo 5 e o `/configurar` dizem "Falta escolher as lojas." com aviso em âmbar na linha Lojas ("Nenhuma marcada. Sem loja, nenhuma peça sai."). Limite: essa conta já tinha usado o botão "Pular a configuração" antes, então este caso não prova, sozinho, a regra de "pular pergunta por pergunta"; só uma conta nova mostraria. (3) Respondendo de verdade uma pergunta (Horários, "Só à noite"): o Início passa a "Lojas, horários e mensagem: já respondidos · Mudar" (link de 47 px que leva a `/configurar`). (4) Depois de responder também Lojas (FARM Rio, com um código de teste): `/configurar` mostra "Configuração concluída.", o resumo com ✓ e "Mudar" (44×55 px) em cada linha e "Voltar ao Início"; em 1366 a tela é a mesma, em coluna única, com "Voltar ao Início" abaixo da dobra. O resumo agora diz "uma peça a cada 8 minutos, o que dá cerca de 30 peças por dia" (antes 32 contra 30).
- Reverificação (cópia, conta nova sem plano, 390): "Pular a configuração" abre uma confirmação ("O que você já respondeu fica salvo. O resto continua no padrão, e dá para mudar pelas telas do menu.") e, depois dela, o Início vira "Primeiros passos" com, fora da contagem ("0 de 5 passos feitos"), a linha "Lojas, horários e mensagem: no padrão · Preparar" (o link "Preparar" tem 71×47 px e leva a `/configurar/lojas`). Texto como combinado. Não consegui ver: "já respondidos · Mudar", o `/configurar` encerrado com "Configuração concluída." e o caso de pular pergunta por pergunta, porque "Continuar" e "Preparar" levam a `/assinar` quando a conta não tem plano (ver UX-030). Sobre o caso de pular as 4 perguntas: pelo texto combinado eu esperaria enganar ("já respondidos" quando ela não respondeu nada); não vi na tela.
- Tela: `/configurar/*` (assistente de 5 passos), celular (390)
- Visto: 2026-10-25
- O que atrapalha: o assistente antigo (lojas, horários, fila, mensagem, conexão) continua no ar em `/configurar`, mas nenhuma tela da conta tem link para ele: o Início agora mostra outro "Primeiros passos" de 5 itens (riscos, conectar, grupo, código de afiliada, conferir regras). São dois roteiros de "cinco passos" com conteúdo diferente; quem chega a `/configurar` por um favorito ou link antigo vê o outro e não sabe qual vale. O assistente antigo ainda tem o problema do UX-008 no desktop.
- Critério: heurística (consistência), clareza de ação
- Conserto sugerido: decidir um só roteiro; se o antigo sai, `/configurar` redireciona para o Início.

### UX-015 · baixa · resolvido (no ar em 25/10, e53edb2a)
- Tela: Início, rodapé "Atendimento: WhatsApp · e-mail", celular (390)
- Visto: 2026-10-25
- O que atrapalha: os links "WhatsApp" (65×18 px) e "e-mail" (38×18 px) ficam abaixo dos 44 px de toque e um colado no outro, como já visto no UX-007 em outras telas. É o único jeito de pedir ajuda sem sair do painel.
- Critério: toque (44 px)
- Conserto sugerido: dar a cada link uma área de 44 px (por exemplo, dois botões lado a lado).

### UX-016 · média · resolvido (no ar em 25/10, e53edb2a)
- Tela: `/conta/notificacoes`, celular (390) e desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: a lista de avisos diz "Limite do dia · Quando saem as 30 peças do dia do plano Essencial" numa conta do plano Atelier, que não tem limite diário (`/conta/plano` mostra "Plano Atelier"). A cliente lê que está num plano que não é o dela e que existe um limite que não vale. Outro aviso, "Lojix · Quando a Lojix da Farm começa e quando termina", usa um nome que a tela não explica, e "Promoção no ar" fala em "suas regras", palavra que não está no menu.
- Critério: heurística (consistência com o sistema real), texto (palavra técnica)
- Conserto sugerido: usar o plano da conta no texto (e esconder "Limite do dia" quando o plano não tem limite); explicar "Lojix" em poucas palavras ("a liquidação da Farm") ou trocar pelo nome que a cliente conhece; trocar "regras" por "lojas que você escolheu".

### UX-017 · baixa · conferido por captura em 26/10 (1aa6ff30): aprovado, com ressalvas UX-041 e UX-043
- Capturas `notificacoes-390-*` e `notificacoes-1366-*` (normal, salvo, bloqueada-computador, bloqueada-android): os avisos agora vêm em "Essenciais" (Número desconectado, Envio pausado, Pagamento, Fim do teste grátis) e "Outros" (Fila sem peças, Promoção no ar, Lojix, este explicado como "a live de vendas da Farm (a Lojix)"); ao desmarcar "Promoção no ar" aparece "Salvo" em verde ao lado dele. O bloqueio traz passos por aparelho: "No computador" (2 passos) e, no Android, "No Android, no Chrome" (3 passos) e "No Android, com o painel instalado" (3 passos), com o botão "Como instalar o painel no celular". Os nomes de menu (três pontinhos do Chrome, Configurações → Configurações do site → Notificações; "Informações do app" no painel instalado; ícone à esquerda do endereço no computador) soam certos para a persona, mas não foram conferidos num aparelho. O caso do iPhone não aparece (só com o painel instalado). A captura não mostra por quanto tempo o "Salvo" fica, se é lido por leitor de tela, nem o foco.
- Achado original:
- Tela: `/conta/notificacoes`, celular (390)
- Visto: 2026-10-25
- O que atrapalha: (a) o cartão "Neste aparelho" diz "As notificações estão bloqueadas… Libere nas configurações do navegador (Notificações) e volte aqui" sem dizer como no iPhone ou no Android, para quem não sabe o que são configurações do navegador (no navegador de teste isso pode ser só a permissão negada; não confirmei para uma cliente real); (b) são 8 avisos com a descrição de 10 a 25 palavras cada, 7 já marcados, numa tela de 1.300 px; a cliente não sabe qual desligar. Não alterei nenhum aviso e não vi a resposta ao marcar (a tela não tem botão Salvar).
- Critério: densidade, heurística (ajuda e documentação, status do sistema)
- Conserto sugerido: no bloqueio, link para o passo a passo "Instalar o painel no celular"; mostrar só o nome do aviso, com a descrição em "ver mais"; confirmar com uma linha ("Salvo") quando o aviso mudar.

### UX-018 · média · parcial (no ar em 25/10, e53edb2a): falta o nome e o link do painel da multimarca, com a dona
- Tela: `/conta/codigos`, celular (390) e desktop (1366)
- Visto: 2026-10-25
- O que atrapalha: é o passo que libera o envio ("Loja sem código não envia"), mas a ajuda "Onde acho meu código?" só diz "Entre no dashboard da multimarca: o seu código de vendedora fica lá", sem link nem o nome do programa de cada loja. A tela chama de "código de afiliada" e a ajuda de "código de vendedora"; "multimarca" não aparece em nenhuma outra tela. A cliente que não lembra onde fica o código sai do painel para procurar e volta sem o caminho.
- Critério: texto (palavra técnica, inconsistência), heurística (ajuda)
- Conserto sugerido: por loja, o link do painel de afiliada dela e um exemplo do formato do código; usar sempre "código de afiliada".

### UX-019 · baixa · resolvido (no ar em 25/10, e53edb2a)
- Tela: `/conta/dados`, celular (390)
- Visto: 2026-10-25
- O que atrapalha: "Dados" mostra o nome e o e-mail como texto, sem editar e sem dizer como mudar. Quem digitou o e-mail errado ou mudou de nome não sabe se é possível. A troca de senha (campos de 46 px, `autocomplete` certo) e o "Encerrar a conta" (senha, caixa de confirmação, botão com contorno vermelho) estão claros e protegidos.
- Critério: heurística (controle do usuário, ajuda)
- Conserto sugerido: uma linha sob os dados: "Para mudar o nome ou o e-mail, fale com o atendimento" com o link do WhatsApp.

### UX-020 · baixa · proposta pedida (Engenharia, 25/10) · segunda conferência 26/10: aprovado na cópia (42476b82)
- Segunda conferência (cópia, 390 e 1366): sem selo de novidades no menu ("Menu da conta: UX Cópia"); `/conta/novidades` com as 3 novidades de 24/10 e "Ver anteriores (29)" fechado, sem quebra de layout.
- Reverificação (cópia, conta nova "UX Cópia", 390): o botão do menu diz só "Menu da conta: UX Cópia", sem "há N novidades"; `/conta/novidades` caiu de 6.107 px para 1.016 px, mostra 3 novidades (todas de 24/10) e um "Ver anteriores (29)" de 44 px, fechado. Falta ver em 1366. Observação: as 3 mostradas falam de editar a mensagem de promoções ("No Essencial, troque a primeira linha…"), coisa que a conta nova ainda não usa; o texto continua com "Essencial" mesmo para conta sem plano.
- Tela: `/conta/novidades` e botão do menu, celular (390)
- Visto: 2026-10-25
- O que atrapalha: a conta nova, que acabou de entrar, vê no menu "há 32 novidades" e uma página de 6.100 px (cerca de 7 telas) com um histórico de mudanças de 17 a 24/10. Os textos falam de coisas que ela ainda não tem ("Reloginho", "Flash sale", "FARM Etc como loja", "No Essencial", `{desconto}`). O aviso some depois da visita, mas a primeira impressão é de trabalho atrasado.
- Critério: densidade, texto
- Conserto sugerido: para conta com menos de 7 dias, contar só as novidades depois do cadastro; mostrar as 3 últimas e o resto em "ver anteriores".

### UX-021 · baixa · resolvido (no ar em 25/10, e53edb2a)
- Tela: `/conta/plano`, celular (390)
- Visto: 2026-10-25
- O que atrapalha: a linha "Grupos por número: 0, sem limite" mistura o uso (0) com o limite (sem limite) e lê como "zero grupos, sem limite"; as outras linhas dizem "0 de 3". "Mensagem pela IA: Sim" e "Mensagem: Do seu jeito, com frases de chamada" repetem o nome do plano na vendas, mas aqui não dizem o que a cliente ganha.
- Critério: texto, heurística (consistência)
- Conserto sugerido: "0 (sem limite)" ou "0 de ilimitados"; padronizar as quatro primeiras linhas no formato "usado de limite".

### UX-022 · baixa · resolvido (no ar em 25/10, e53edb2a)
- Tela: `/conta/atendimento`, celular (390)
- Visto: 2026-10-25
- O que atrapalha: o e-mail aparece primeiro, em destaque, e o "Falar no WhatsApp" vem depois como botão de contorno, quando a cliente (afiliada, no celular) usa WhatsApp o dia todo. O link do e-mail tem 21 px de altura, abaixo dos 44 px.
- Critério: hierarquia, toque (44 px)
- Conserto sugerido: WhatsApp como botão principal e o e-mail como alternativa, com área de toque de 44 px.

### UX-023 · alta · pronto na cópia (`claude/ux-historico`, `9ce8c7da`, com o grupo principal na mesma linha), ok dela para a produção, parado pelo disco cheio (25/10)
- Reverificação (cópia, conta de demonstração, 390 e 1366): em `/historico`, `/historico?falhas=1` (6 envios) e `/historico?pagina=2` não aparece "Evolution", caminho, `{` `}` nem `[object Object]`. O cartão misto agora diz "Saiu em 1 de 2 grupos" e "Saiu em 2 de 3 grupos", e o erro virou "Não chegou a Achadinhos da Fran (18:01). O WhatsApp não aceitou esta mensagem neste grupo. Confira se o número ainda está no grupo e pode mandar mensagens nele." Falha sem causa conhecida diz "O envio deu erro. Se acontecer de novo, fale com o atendimento." O que falta: nos cartões mistos, o grupo principal aparece só como "Grupo: Ofertas (demonstração)", sem selo de saiu, enquanto os outros grupos têm uma linha "Saiu" ou "Falhou"; não há "uma linha por grupo" no mesmo formato. Visto na cópia, não em produção.
- Relato original (antes do conserto):
- Tela: `/historico`, celular (390)
- Visto: 2026-10-25
- O que atrapalha: o motivo da falha chega assim: "Não chegou a Achadinhos da Fran (18:01): Evolution respondeu 400 em /message/sendMedia/demo: [object Object]". Tem nome de sistema ("Evolution"), caminho técnico e um `[object Object]` de erro de programa, e não diz o que fazer. O mesmo cartão traz "✓ SAIU" no canto e "FALHOU" no corpo (saiu para um grupo e falhou para outro) sem explicar a diferença, então a cliente não sabe se a peça foi ou não. Outras falhas da mesma lista têm motivo legível ("A mensagem pode ter chegado. Confira o grupo antes de repetir"), que é o padrão a seguir. Nota: o texto pode vir do dado de demonstração, mas o formato "Evolution respondeu…" é montado pelo painel e aparece igual para uma cliente real.
- Critério: heurística (mensagens de erro em linguagem clara, status do sistema), texto
- Conserto sugerido: traduzir todo erro técnico para uma frase da cliente ("O WhatsApp recusou o envio para Achadinhos da Fran. Confira se o número ainda está no grupo") e nunca mostrar caminho nem objeto; no cartão com resultado misto, mostrar um selo por grupo ("Ofertas: saiu · Achadinhos: falhou") em vez de dois status soltos.

### UX-024 · média · conferido por captura em 26/10 (1aa6ff30): aprovado, com ressalvas UX-040 e UX-042
- Capturas `inicio-390-com-liqui.png` e `inicio-1366-com-liqui.png`: o placar "Hoje" vem logo depois do cartão do WhatsApp, em grade 2×2 (Peças enviadas 2, Mensagens 3, Falhas 2 com "Ver no Histórico", Na fila 4) com rótulos que parecem maiores que os de 12 px (o tamanho exato não se mede em captura); as promoções viraram um cartão neutro e compacto por promoção (Reloginho, Liqui, Vitrine da Semana), sem borda vermelha, com "Nenhuma das N peças saiu ainda". A página de 390 caiu de 3.738 para cerca de 2.650 px; em 1366 os cartões ficam em 3 colunas. Ressalvas: o convite "Avisos no celular" e o alerta "Um grupo parou de receber as peças" ainda vêm antes do "Hoje" (UX-040); o texto da Liqui ainda copia a frase da loja, cortada no meio de palavra (UX-042).
- Achado original:
- Tela: Início ("Seu grupo hoje"), celular (390)
- Visto: 2026-10-25
- O que atrapalha: a página tem 3.738 px (cerca de 4,5 telas). O que a cliente abre para ver (o placar "Hoje": enviadas, mensagens, falhas, na fila) é o último bloco, depois de 7 cartões de promoção. Cada cartão de promoção tem borda vermelha, repete o texto da loja inteiro (no Liqui, "Liqui DE VERÃO TUDO COM 30% OFF… *Válido somente… produtos da coleção de verão", com a frase duplicada) e termina com a mesma linha "Nenhuma das N peças da promoção saiu ainda para o grupo". Vermelho nesse peso parece alarme, mas é só informação. O placar usa rótulos de 12 px e quebra em 3 + 1 números. O alerta do topo ("Um grupo parou de receber as peças") está bem posto.
- Critério: densidade, hierarquia
- Conserto sugerido: o placar "Hoje" logo depois dos alertas e do cartão do WhatsApp; promoções num bloco só, recolhido, com uma linha por promoção; cor neutra nesses cartões; rótulos a partir de 13 px, os 4 números em grade 2 × 2.

### UX-025 · média · conferido por captura em 26/10 (ccc0feac): aprovado
- Capturas `mensagem-390-ficou-do-seu-jeito-v2.png` e `mensagem-1366-ficou-do-seu-jeito-v2.png` (estado "Ficou do seu jeito?"): no 390 a ordem é Prévia (texto em cima, foto pequena) → botões de tipo → "Ficou do seu jeito?" com "Usar em todos os seus grupos" → "Quer mudar alguma coisa?" → "Ajustes só deste grupo" recolhido; no 1366 o bloco "Ficou do seu jeito?" fica à esquerda e a prévia à direita. O botão agora vem depois de a cliente ver a mensagem e diz o alcance. Não vi: o que acontece ao tocar, nem a mensagem de confirmação.
- Conferência anterior (40693494): visto em parte; faltava o botão "Usar em todos os seus grupos".
- Capturas `mensagem-390-previa.png`, `mensagem-390-ajustes-do-grupo-aberto.png`, `mensagem-1366-previa.png`, `mensagem-1366-ajustes-do-grupo-aberto.png`: a prévia mostra o texto em cima e a foto pequena (um bloco de uns 130×170 px no 390, 130×170 no 1366), muito menor que antes; em 1366 fica ao lado das escolhas. Os ajustes só do grupo ficam recolhidos sob "Ajustes só deste grupo: Ofertas (demonstração)" e, abertos, trazem "Os tamanhos e o convite valem só para este grupo. A mensagem acima vale para todos." e o botão flutuante "Salvar só neste grupo". Não vi: "Usar em todos os seus grupos", porque as capturas são do estado "Como você quer começar?" (botão "Continuar"), não do estado "Ficou do seu jeito?" onde esse botão existia; então não dá para dizer se ele agora vem depois da prévia. Também não vi o que muda ao tocar. O título "Ajustes só deste grupo…" é texto em negrito sem seta (ver UX-038).
- Achado original:
- Tela: `/envio/mensagem`, celular (390)
- Visto: 2026-10-25
- O que atrapalha: 3.654 px em três tarefas: (1) "Ficou do seu jeito?" com o que a IA reparou, (2) a prévia, (3) os ajustes do grupo. O botão "Usar esta mensagem" fica a 640 px, antes de a cliente ver a mensagem; a prévia só começa a 1.090 px, atrás de cinco botões de tipo, e a foto da peça ocupa a maior parte de uma tela, de modo que o texto da mensagem só aparece depois dela. Há dois botões de salvar com alcance diferente e sem aviso: "Usar esta mensagem" vale "para todos os seus grupos e números", e o único "Salvar neste grupo" (a 3.570 px) vale só para o grupo, o convite e os tamanhos. A cliente que mexe no convite e toca "Usar esta mensagem" pode achar que salvou o grupo também (não testei salvar).
- Critério: hierarquia, clareza de ação, densidade
- Conserto sugerido: prévia (texto primeiro, foto menor) antes do botão "Usar esta mensagem"; ajustes do grupo num bloco recolhido com o próprio botão de salvar logo abaixo e o aviso "só para este grupo".

### UX-026 · média · conferido por captura em 26/10 (40693494): aprovado, com a ressalva UX-038
- Capturas `lojas-390-fechado.png`, `lojas-390-filtrar-mais-aberto.png`, `lojas-1366-fechado.png`, `lojas-1366-filtrar-mais-aberto.png`, `catalogo-390-rodada-de-envios.png`, `catalogo-1366-rodada-de-envios.png`: fechado, a tela mostra só Lojas e Seções e a linha "Filtrar mais: categorias, tamanhos e preço" (390: uns 1.400 px, antes 3.190); aberto, vêm Categorias, Tamanhos (Roupa: PP 46, P 54, M 57, G 53, 40, Tamanho único; Calçado: 35, 36; Roupa e calçado: 38) e Preço, cada tamanho uma vez. "Nesta rodada de envios" aparece nas seções e no diálogo "Adicionar à fila de hoje?" do Catálogo ("Já saiu nesta rodada de envios, há 2 dias…"). Ressalvas: a linha "Filtrar mais" é um texto em negrito sem seta nem caixa, no fechado e no aberto, então nada diz que abre (UX-038); a contagem de estoque continua ao lado dos tamanhos ("PP · 46"); "38" aparece em "Roupa e calçado" sem explicar por quê. A captura não mostra o toque nem o foco.
- Achado original:
- Tela: `/envio/lojas`, celular (390)
- Visto: 2026-10-25
- O que atrapalha: 3.190 px e 25 caixas de marcar em cinco blocos (lojas, seções, categorias, tamanhos, preço) com um único "Salvar regras" no fim (a 3.100 px). Os tamanhos são 26 caixas em duas colunas, com roupa (XPP a XG) e calçado (33 a 46) misturados, o mesmo número em dois formatos ("33/34 · 8" e "33 34 · 16") e a contagem de peças em estoque ao lado, que não ajuda a decidir. "Nesta volta: 1 de 1680 peças já saiu" usa "volta", palavra sem sentido para a cliente. Tudo já vem marcado, então quem não mexe não precisa de tudo isso na primeira tela.
- Critério: densidade (carga cognitiva, divulgação progressiva)
- Conserto sugerido: mostrar lojas e seções e deixar categorias, tamanhos e preço atrás de "Filtrar mais"; separar os tamanhos em "Roupa" e "Calçado" e fundir os formatos repetidos; trocar "volta" por "nesta rodada de envios" ou tirar a frase.

### UX-027 · média · conferido por captura em 26/10 (40693494): aprovado, com ressalvas
- Capturas `horarios-390-como-abre.png`, `horarios-390-ajustes-avancados-aberto.png`, `horarios-390-do-meu-jeito-intervalo.png`, `horarios-390-acima-do-maximo.png` e as quatro de 1366: "Ritmo" abre com "Peças por dia" marcado e o campo "Peças por dia, em cada grupo" = 32, e embaixo "Uma peça a cada 10 minutos, mais ou menos. Com esses horários e esse intervalo, cada um dos 2 grupos recebe cerca de 32 peças por dia: o número manda 64 mensagens." "Do meu jeito: intervalo em minutos" troca o campo para "Intervalo entre as peças (min)" = 10. O botão "Do meu jeito: de 15 em 15 minutos" fica junto de "Adicionar janela". "Ajustes avançados: como o robô escolhe" vem recolhido e, aberto, traz os 5 ajustes com "Voltar ao padrão" e "Tudo já está no padrão." Ressalvas: (a) "o número manda 64 mensagens" continua e ainda assusta quem pensava em 32; (b) "Ajustes avançados…" é texto em negrito sem seta (UX-038); (c) acima do máximo (999), o erro "Nesses horários cabem até 44 peças por dia." aparece duas vezes (em vermelho com ■ e logo abaixo em cinza; a Engenharia já sabe), mais "Não deu para salvar" e "Confira os campos marcados." na barra de baixo; (d) a captura não mostra o que o botão de 15 em 15 faz ao tocar.
- Achado original:
- Tela: `/envio/horarios`, celular (390)
- Visto: 2026-10-25
- O que atrapalha: o mesmo número é pedido de dois jeitos. No assistente a cliente escolhe "Quantas peças por dia: 10, 20, 30, 40"; aqui o campo é "Intervalo entre as peças (min)" e o total só aparece como resultado, "cerca de 32 peças por dia: o número manda 64 mensagens". Quem quer "30 por dia" precisa fazer a conta, e o 64 (dois grupos) assusta quem pensava em 32. As janelas de horário usam dois seletores de 96 opções (de 00:00 a 23:45) cada. Abaixo, "Como o robô escolhe" expõe percentuais soltos ("Novidades: pelo menos 30%", "Acessórios e calçados: no máximo 25%", "Uma loja só: no máximo 60%") com listas de opções, tarefa para quem quer afinar, não para a cliente de primeiro dia.
- Critério: heurística (correspondência com o mundo real), densidade
- Conserto sugerido: o campo principal em "peças por dia" (o intervalo vira resultado); seletores de hora de 30 em 30 minutos com "Do meu jeito" para o resto; "Como o robô escolhe" recolhido em "Ajustes avançados".

### UX-028 · baixa · conferido por captura em 26/10 (40693494): textos aprovados; "Reconectar" cortado no 390 (UX-039)
- Capturas `fila-390-robo.png`, `fila-390-desconectada.png`, `fila-1366-robo.png`, `fila-1366-desconectada.png`: o cartão diz "Quem monta a fila: o robô" com "Trocar para: eu monto" (no fim da página, depois de "Como funciona"; em 1366 fica à direita, no topo). Em 1366 "Reconectar" é um botão verde inteiro. Em 390 o botão aparece com o texto cortado, "Reconec", ao lado dos links "2 já saíram · 1 falhou · 2 puladas": ver UX-039.
- Achado original:
- Tela: `/fila`, celular (390)
- Visto: 2026-10-25
- O que atrapalha: com o número desconectado a fila fica vazia e a tela mostra 3 cartões. O terceiro, "O robô monta a fila", tem como botão "Eu monto a fila": a cliente não sabe se o título é o modo atual ou uma opção, nem se o botão troca de modo na hora. "Reconectar" é um link sublinhado aqui e um botão cheio no Início. Não avaliei a fila com peças: a cópia não monta fila sem número conectado.
- Critério: clareza de ação, consistência
- Conserto sugerido: "Quem monta a fila: O robô · Trocar para: Eu monto" com o estado atual escrito; "Reconectar" como botão, igual ao Início.

### UX-029 · baixa · conferido por captura em 26/10 (40693494): aprovado
- Capturas `barra-lateral-390-nome-comprido-com-plano.png` e `barra-lateral-1366-nome-comprido-com-plano.png`: com "Maria Fernanda de Albuquerque" e "Plano Maison", o nome é cortado com reticências ("Maria Fernanda de Albuqu…" no 390, "Maria Fernanda…" no 1366), o plano fica numa segunda linha e a seta (390: "⌃"; 1366: "⌃") aparece à direita, sem passar por cima do conteúdo. A captura não mostra o foco da seta.
- Achado original:
- Tela: barra lateral (rodapé da conta), desktop (1366), em todas as telas
- Visto: 2026-10-25
- O que atrapalha: o nome da conta "Conta de desenvolvimento" passa da largura da barra lateral e cobre a borda e a seta de abrir o menu da conta. Uma cliente com nome ou sobrenome comprido vê o mesmo, e a seta, que abre Sair e as telas de Conta, fica parcialmente escondida.
- Critério: hierarquia, clareza de ação
- Conserto sugerido: cortar o nome com reticências (uma linha) e deixar a seta sempre à direita.

### UX-032 · média · quarta conferência 26/10 (cc6237ab): aprovado na cópia (caso loja sem código); o caso "sem loja nenhuma" continua não visto
- Quarta conferência (cópia, UX Cópia sem plano, 390 e 1366): apagando o código da FARM Rio, o Início diz "Falta o código da loja · Escolher o plano" e, com o código de volta, "Lojas, horários e mensagem: já respondidos · Escolher o plano" (conferido por busca do texto da página; o 390 e o 1366 usam o mesmo texto). O caso sem nenhuma loja ainda não deu para ver (sem plano `/configurar/lojas` redireciona). Ver UX-036 sobre o link.
- Histórico do achado: na terceira conferência (25a10856) não estava corrigido; ver UX-033.
- Terceira conferência (cópia, UX Cópia sem plano, 390 e 1366): com Lojas respondida o Início mostra "Lojas, horários e mensagem: já respondidos · Escolher o plano" (a linha leva ao plano). Para ver o caso sem loja, não dá para tirar a loja em `/configurar/lojas` (sem plano ela redireciona para `/assinar`). Apaguei só o código da FARM Rio em `/conta/codigos` (a conta é minha, na cópia) e o Início continuou "já respondidos"; o `/configurar` passou a dizer "✓ Lojas: FARM Rio, sem código" e "Configuração concluída." Reconstituí o código depois. O caso "Falta escolher as lojas · Preparar" não deu para ver.
- Texto original do achado:
- Tela: Início ("Primeiros passos"), celular (390) e desktop (1366)
- Visto: 2026-10-26
- O que atrapalha: respondendo só a pergunta de Horários e deixando Lojas sem marcar, o Início diz "Lojas, horários e mensagem: já respondidos · Mudar", mas `/configurar` da mesma conta diz "Falta escolher as lojas. Nenhuma marcada. Sem loja, nenhuma peça sai." A cliente que respondeu uma pergunta lê que as três estão respondidas e não vê no Início que falta justo a que decide o que sai. A regra "já respondidos quando respondeu ao menos uma" cumpre o combinado, mas a frase afirma as três.
- Critério: heurística (status do sistema, consistência), texto
- Conserto sugerido: "já respondidos" só quando as lojas estiverem escolhidas; com lojas vazias, "Falta escolher as lojas · Preparar"; ou trocar a frase por "Algumas respostas salvas · Mudar".

### UX-033 · média · quarta conferência 26/10 (cc6237ab): aprovado na cópia
- Quarta conferência (cópia, 390 e 1366): sem o código, `/configurar` tem o título "Falta o código da loja." (no lugar de "Configuração concluída."), a linha Lojas com ▲ âmbar e sem ✓, "FARM Rio, sem código. Sem o código, nenhuma peça sai.", e os outros três com ✓. Com o código de volta: "Configuração concluída." e ✓ em Lojas ("FARM Rio, código UXCOPIA"). Em 390 o texto da linha Lojas quebra em 4 linhas por causa do link "Escolher o plano" ao lado (ver UX-036).
- Achado original:
- Tela: `/configurar` ("Configuração concluída."), celular (390) e desktop (1366)
- Visto: 2026-10-26
- O que atrapalha: apagando o código da FARM Rio, a tela segue com título "Configuração concluída." e ✓ verde em "Lojas: FARM Rio, sem código", e o Início segue "já respondidos". Loja sem código não envia nada, então a única loja escolhida não envia e a tela diz que está concluído. Mesmo problema do UX-032, agora numa conta que escolheu loja.
- Critério: heurística (status do sistema), texto
- Conserto sugerido: ✓ e "concluída" só quando a loja escolhida tem código; senão aviso âmbar "FARM Rio: falta o código · Cadastrar" levando a `/conta/codigos`.

### UX-034 · média · quarta conferência 26/10 (cc6237ab): aprovado na cópia (1366); não revisto o nome comprido
- Quarta conferência (cópia, 1366): o pé da barra lateral diz "UX Cópia / Sem plano", dentro da barra (borda direita do texto em 187 px, barra em 240 px), sem e-mail e sem passar por cima do conteúdo no Início e no Catálogo. O nome da conta aqui é curto; o caso de nome comprido (UX-029) não foi revisto. No celular o menu é gaveta e não consegui abri-lo para conferir.
- Achado original:
- Tela: barra lateral, rodapé da conta, desktop (1366), em todas as telas
- Visto: 2026-10-26
- O que atrapalha: sem plano, a linha embaixo do nome da conta mostra o e-mail ("Plano Atelier" não existe), e o e-mail comprido passa da largura da barra lateral e fica por cima do conteúdo, riscando o item "5. Conferir as regras e ligar" no Início e a lista do Catálogo. Visto na UX Cópia; toda cliente sem plano (ou com e-mail comprido) vê o mesmo. No celular o menu é gaveta; não consegui abrir para conferir. Mesma família do UX-029.
- Critério: hierarquia, densidade
- Conserto sugerido: cortar a linha com reticências, uma linha só, dentro da barra (ou mostrar "Sem plano" no lugar do e-mail).

### UX-035 · baixa · quarta conferência 26/10 (cc6237ab): aprovado na cópia, com a ressalva UX-037
- Quarta conferência (cópia, 390 e 1366): no `/configurar` os links viram "Escolher o plano" (nome acessível "Escolher o plano para mudar: Lojas"); o Catálogo tem um único "Escolher o plano" no topo, sem "Mudar de plano" em cada peça; Frases de chamada mostra "Frases de chamada só para leitura. Modelos e frases de chamada só no Maison e no Atelier… Escolher o plano".
- Achado original:
- Tela: `/configurar` concluído e `/catalogo`, `/envio/frases`, celular (390) e desktop (1366)
- Visto: 2026-10-26
- O que atrapalha: sem plano, o resumo "Configuração concluída." diz "Dá para mudar qualquer resposta" e cada "Mudar" leva a `/assinar`, e o botão "Conectar o WhatsApp" leva a `/conexao`, que abre com "Sem plano: escolha um plano para enviar". No Catálogo e em Frases de chamada os avisos de plano dizem "Mudar de plano" (o Catálogo repete o link 24 vezes, um por peça) para quem não tem plano nenhum.
- Critério: texto, clareza de ação
- Conserto sugerido: sem plano, o resumo troca "Mudar" por "Escolher o plano para mudar" e o link do Catálogo e de Frases diz "Escolher o plano".

### UX-036 · baixa · conferido na cópia em 26/10 (5f2849b4): aprovado
- Conferência (cópia, UX Cópia sem plano, 390 e 1366): com o código da FARM Rio apagado, o Início diz "Falta o código da loja · Cadastrar o código" (→ `/conta/codigos`; no 390 o link quebra em duas linhas, "Cadastrar o / código"). O `/configurar` tem o subtítulo "Para mudar uma resposta, escolha o plano.", só a linha Lojas com o link "Cadastrar o código" (→ `/conta/codigos`, 44 px, embaixo da resposta em 390 e ao lado em 1366, sem apertar o texto) e "Escolher o plano" uma vez, entre os botões do fim. Com o código de volta (UXCOPIA): Início "já respondidos · Escolher o plano" e `/configurar` "Configuração concluída." com ✓ e sem links por linha. Deixei o código posto.
- Achado original:
- Tela: Início (linha dos Primeiros passos) e `/configurar`, celular (390) e desktop (1366)
- Visto: 2026-10-26
- O que atrapalha: com a loja sem código, o Início diz "Falta o código da loja · Escolher o plano" e a linha Lojas do `/configurar` oferece "Escolher o plano". O que falta é o código, e o código se cadastra em `/conta/codigos`, que abre mesmo sem plano; o link leva para a venda do plano. No `/configurar`, o mesmo "Escolher o plano" aparece quatro vezes, um em cada linha, e em 390 aperta o texto da linha Lojas em 4 linhas.
- Critério: clareza de ação, densidade
- Conserto sugerido: na linha com código faltando, o link é "Cadastrar o código" (→ `/conta/codigos`); o "Escolher o plano" fica uma vez só, no fim do resumo ou na faixa do topo.

### UX-037 · baixa · conferido na cópia em 26/10 (5f2849b4): aprovado no Catálogo; Fila não vista
- Conferência (cópia, 390 e 1366): o cartão agora diz "Foto sua na mensagem é de outro plano · Fotos próprias só no Maison e no Atelier."; os 24 links "Ver na loja" do Catálogo têm 75×44 px. O "Ver na loja" da Fila só aparece com peça na fila, e a cópia não monta fila sem número conectado: não deu para ver.
- Achado original:
- Tela: Catálogo, celular (390) e desktop (1366)
- Visto: 2026-10-26
- O que atrapalha: logo abaixo do aviso de plano há um segundo cartão, "Usar minha foto fora do plano · Fotos próprias só no Maison e no Atelier." Lido ao pé da letra, "fora do plano" parece "fora do prazo" ou "sem cobrança". Os dois cartões empurram "Promoções no ar" para uns 600 px do topo. Os links "Ver na loja" de cada peça têm 67×24 px (abaixo dos 44 px de toque).
- Critério: texto, densidade, toque (44 px)
- Conserto sugerido: "Foto sua na mensagem: só no Maison e no Atelier", dentro do cartão do plano ou na própria peça; área de toque de 44 px nos links.

### UX-030 · média · quarta conferência 26/10 (cc6237ab): aprovado na cópia
- Quarta conferência (cópia, sem plano): faixa e linha do Início, Catálogo, Conta, `/conexao`, `/fila` e `/historico` como na terceira (sem texto que prometa o que não abre). Segue não visto o cartão "As perguntas abrem depois de escolher o plano" (só com a configuração incompleta).
- Terceira conferência (25a10856): corrigido, com os pontos UX-034 e UX-035
- Terceira conferência (cópia, UX Cópia sem plano, 390 e 1366): a faixa do Início diz "Sem plano, o WhatsApp não conecta e nada é enviado. O catálogo e a conta continuam abertos." com "Escolher o plano" (`/assinar`, 46 px) e a linha dos Primeiros passos termina em "· Escolher o plano" (`/assinar`). O Catálogo e as 7 telas da Conta (Plano, Dados, Códigos, Notificações, Novidades, Atendimento, Aparência) abrem de verdade (conferi por busca da página, sem redirecionamento). `/envio/lojas` e `/envio/mensagem` mostram "Sem plano: escolha um plano para enviar", `/fila` e `/conexao` mostram o aviso de plano. Não vi o cartão "As perguntas abrem depois de escolher o plano. O que você já respondeu está salvo.", porque ele só aparece com a configuração incompleta e `/configurar/*` redireciona para o plano (a configuração da UX Cópia já estava concluída).
- Texto original do achado:
- Tela: Início, `/envio/*`, `/configurar` (via "Continuar" e "Preparar"), celular (390)
- Visto: 2026-10-26
- O que atrapalha: quem cria a conta e escolhe "Ir para o painel sem assinar" vê no Início "Sem plano, o WhatsApp não conecta e nada é enviado. O catálogo, as regras e a conta continuam abertos." e logo abaixo "Configuração… Continuar". Mas "Continuar" (`/configurar`) e, depois de pular, "Preparar" (`/configurar/lojas`) levam de volta à página "Escolha seu plano", e `/envio/lojas` mostra "Sem plano: escolha um plano para enviar". As "regras" que a frase diz abertas não abrem. A cliente toca no botão principal, cai em outra tela de venda e não sabe se perdeu o que fez.
- Critério: heurística (consistência, status do sistema), clareza de ação
- Conserto sugerido: ou liberar a configuração guiada sem plano (ela só prepara, não envia), ou trocar o aviso por "Sem plano, a configuração e as regras só abrem depois de escolher o plano" e levar o botão principal a "Escolher o plano".

### UX-031 · média · aberto (cópia, `/assinar`)
- Tela: `/assinar` com conta nova sem plano, celular (390)
- Visto: 2026-10-26
- O que atrapalha: a tela tem 2.547 px e pede quatro escolhas em fila (cobrança Anual/Mensal, plano, "Como pagar o anual: À vista / Em 12x" e "Como pagar: Cartão / Pix"). Duas perguntas têm o mesmo título "Como pagar" e perguntam coisas diferentes (parcelamento e meio de pagamento). O resumo que responde à dúvida principal ("R$ 0 hoje. 01/11: primeira cobrança de R$ 2.508 (Maison anual) no cartão. Cancele antes pela Conta, sem custo.") só aparece depois de tudo, a uns 2.040 px do topo, abaixo de "Tenho um cupom". Esse resumo está claro. O "Ir para o painel sem assinar" é um link de 21 px de altura embaixo do botão, e a etiqueta "ANUAL" de cada plano tem 12 px (o UX-001 pedia pelo menos 14).
- Critério: densidade, clareza de ação, texto, toque (44 px)
- Conserto sugerido: "Parcelamento" e "Meio de pagamento" como títulos; resumo "R$ 0 hoje…" fixo no rodapé da tela ou logo abaixo do plano; link de 44 px; etiqueta de 14 px.

### UX-040 · média · conferido por captura em 26/10 (134cc64b): aprovado
- Capturas `inicio-390-alerta-e-convite-v2.png` e `inicio-1366-alerta-e-convite-v2.png`: a ordem é alerta "Um grupo parou de receber as peças" → WhatsApp → Hoje → faixa "Avisos no celular: saiba na hora quando um número cair ou o envio parar." com "Ativar" e "Agora não" (no 1366 a faixa fica na terceira coluna, ao lado do "Hoje"). O problema vem primeiro e o convite deixou de ocupar a primeira tela.
- Achado original:
- Tela: Início ("Seu grupo hoje"), celular (390) e desktop (1366)
- Visto: 2026-10-26 (por captura)
- O que atrapalha: quando o aparelho ainda não ativou as notificações, o primeiro cartão do Início é o convite "Avisos no celular · Ativar notificações / Agora não" e só depois vem o alerta amarelo "Um grupo parou de receber as peças". No celular, o convite ocupa a primeira tela inteira e o problema real fica abaixo dele; a cliente vê um pedido antes do aviso de que o envio parou.
- Critério: hierarquia, clareza de ação
- Conserto sugerido: o alerta de problema sempre no topo; o convite de notificações depois do "Hoje" ou numa faixa fina com "Agora não".

### UX-041 · baixa · conferido por captura em 26/10 (134cc64b): aprovado
- Capturas `notificacoes-390-aparelho-desligado-v2.png` e `notificacoes-1366-aparelho-desligado-v2.png`: o cartão diz "Este aparelho não recebe avisos. Ative para saber no celular quando um número cair, o envio parar ou o pagamento precisar de você." e a lista tem, no topo, um aviso âmbar "Nenhum aparelho recebe avisos ainda: estas escolhas valem depois de ativar as notificações neste aparelho." Leitura: "Nenhum aparelho" (conta) e "este aparelho" (o que ela segura) são dois recortes diferentes na mesma tela; funciona, mas "Nenhum aparelho" pode soar como erro. Foco e leitor de tela não aparecem em captura.
- Achado original:
- Tela: `/conta/notificacoes`, celular (390) e desktop (1366)
- Visto: 2026-10-26 (por captura)
- O que atrapalha: ao desmarcar "Promoção no ar", aparece "Salvo" ao lado dele, mas o cartão "Neste aparelho" mostra o botão "Ativar notificações neste aparelho" e a frase solta "Aviso desligado.", que lê como "o aviso que você acabou de desligar" quando quer dizer que este aparelho não recebe nada. Os 7 avisos marcados parecem ativos mesmo com o aparelho desligado; nenhuma frase diz que as escolhas só valem depois de ativar.
- Critério: heurística (status do sistema), texto
- Conserto sugerido: trocar "Aviso desligado." por "Este aparelho ainda não recebe avisos." e, enquanto estiver assim, uma linha sob "Avisos": "Estas escolhas valem depois de ativar neste aparelho."

### UX-042 · baixa · conferido por captura em 26/10 (134cc64b): aprovado
- Capturas `inicio-*-alerta-e-convite-v2.png`: o Liqui diz "FARM Rio · 30% OFF na coleção de verão", com "Cupom LIQUI30: 30% de desconto no carrinho." só na linha do cupom, sem texto cortado no meio da palavra.
- Achado original:
- Tela: Início, cartão "Liqui no ar", celular (390) e desktop (1366)
- Visto: 2026-10-26 (por captura)
- O que atrapalha: a primeira linha copia o texto da loja ("30% OFF na coleção de verão com o cupom LIQUI30 liqui de verão FAR…"), repete "liqui de verão" e é cortada no meio da palavra ("FAR…"); a linha seguinte repete o cupom ("Cupom LIQUI30: 30% de desconto no carrinho"). O objetivo era não repetir o texto da loja.
- Critério: densidade, texto
- Conserto sugerido: uma linha própria por promoção, por exemplo "30% OFF na coleção de verão · Cupom LIQUI30", cortada em palavra inteira.

### UX-043 · baixa · conferido por captura em 26/10 (134cc64b): aprovado no Android Chrome; falta ver o caso "painel instalado" e o computador
- Capturas `notificacoes-390-bloqueada-android-v2.png` e `notificacoes-1366-bloqueada-android-v2.png`: só a lista "No Android, no Chrome" (3 passos), com "Como instalar o painel no celular". Não vi: a lista do painel instalado (aparece quando o painel está instalado, imagino), nem o computador sem o botão de instalar. Menus não conferidos num aparelho.
- Achado original:
- Tela: `/conta/notificacoes` bloqueada, Android e computador, celular (390) e desktop (1366)
- Visto: 2026-10-26 (por captura)
- O que atrapalha: no Android aparecem as duas listas ao mesmo tempo ("No Chrome" e "Com o painel instalado", 6 passos). A cliente precisa saber se instalou o painel para escolher. No computador aparece o botão "Como instalar o painel no celular", que não serve a quem está no computador.
- Critério: densidade, clareza de ação
- Conserto sugerido: mostrar só a lista que vale quando o painel sabe se está instalado; senão, "Abriu pelo ícone da Vitrinista? Use esta lista" e deixar a outra recolhida; esconder o botão de instalar no computador.

### UX-038 · média · conferido por captura em 26/10 (ccc0feac, seta na 134cc64b): aprovado
- Capturas `mensagem-390-ajustes-do-grupo-nome-comprido-v2.png` e `mensagem-1366-ajustes-do-grupo-nome-comprido-v2.png`: com o nome de grupo comprido ("Achadinhos da Fran com frete grátis e cupom toda semana"), o título quebra em duas linhas e a seta ⌃ fica logo depois do fim do texto, não mais na ponta da linha.
- Detalhe anterior (ccc0feac):
- Capturas `-v2` (390): "Filtrar mais: categorias, tamanhos e preço" e "Ajustes avançados: como o robô escolhe" agora são texto verde sublinhado com seta ⌄ ao lado do texto, como as da Fila; "Ajustes só deste grupo: Ofertas (demonstração)" também, com a seta (⌄ fechado, ⌃ aberto) na ponta direita da linha, longe do texto quando ele quebra em duas linhas (detalhe de acabamento). Toque e foco não aparecem em captura.
- Achado original:
- Tela: `/envio/lojas` ("Filtrar mais: categorias, tamanhos e preço"), `/envio/horarios` ("Ajustes avançados: como o robô escolhe"), `/envio/mensagem` ("Ajustes só deste grupo"), celular (390) e desktop (1366)
- Visto: 2026-10-26 (por captura)
- O que atrapalha: as três seções recolhidas viraram uma linha em texto negrito, sem seta, sem caixa e sem borda, nem no fechado nem no aberto. Nada diz que abre. Na Fila, "Puladas (2) ⌄", "Já saíram hoje ⌄" e "Como funciona ⌄" têm seta; a regra é outra nessas três telas. Quem precisa de categorias, tamanhos, preço, ritmo avançado ou convite do grupo pode não achar, e a tela parece terminada.
- Critério: clareza de ação (affordance), consistência
- Conserto sugerido: o mesmo padrão da Fila (texto de link verde com seta ⌄/⌃ e 44 px de altura) ou uma caixa com borda; a captura não mostra foco nem o que acontece ao tocar, então conferir na cópia.

### UX-039 · média · conferido por captura em 26/10 (ccc0feac): aprovado
- Captura `fila-390-desconectada-v2.png`: "Reconectar" agora é um botão verde inteiro (uns 150×46 px) em linha própria, abaixo de "Nada sai até o número reconectar.", e os links "2 já saíram · 1 falhou · 2 puladas" vêm embaixo. Sem corte.
- Achado original:
- Tela: `/fila` desconectada, celular (390)
- Visto: 2026-10-26 (por captura)
- O que atrapalha: o botão "Reconectar", a ação que resolve o estado, aparece espremido e com o texto cortado ("Reconec") ao lado dos links "2 já saíram · 1 falhou · 2 puladas", com um pedaço de caixa à esquerda. No 1366 o botão é inteiro. Quem está com o número caído, no celular, vê um botão que não diz o que é.
- Critério: clareza de ação, hierarquia
- Conserto sugerido: no 390, "Reconectar" em linha própria, largura inteira (46 px), e os links "já saíram/falhou/puladas" embaixo.

## Medido e sem achado (2026-10-25)

- Produção (UX Teste, 390), conferência da UX-023 em 26/10: `/historico` e `/fila` mostram só o estado vazio ("O histórico aparece aqui depois que um número é conectado"), sem texto técnico; `/conexao` sem número não tem "Último erro" nem "Enviar agora". Os cartões de falha, o "Saiu em N de M grupos", o "Enviar agora" que falhou e o "Último erro" não deu para ver em produção: a conta não tem número.
- Cópia, conta nova (26/10, 390): contraste WCAG calculado sem falha em Início, `/conta/novidades` e `/assinar`; sem rolagem lateral em 375 px.

- Cópia, com dados, 1366: `/historico` (grade de 3 colunas) e `/envio/mensagem` (ajustes à esquerda, prévia à direita, o que ajuda a ver o efeito) funcionam sem sobreposição; nesta tela a foto da peça (uns 400 px) ainda vem antes do texto da prévia. Início, `/fila`, `/envio/lojas` e `/envio/horarios` só foram vistos em 390 na cópia.
- Cópia, com dados (390): contraste WCAG calculado sem falha em Início, `/fila`, `/envio/mensagem`, `/envio/lojas`, `/envio/horarios` e `/historico`; sem rolagem lateral em 375 px. Os links "ver link" do histórico têm 43×24 px (abaixo dos 44 px de toque, mesmo problema do UX-015). Não avaliados: a fila com peças e o efeito de salvar em `/envio/*` (não salvei nada); `/envio/mensagem` na parte do convite e dos tamanhos só lida por texto.
- Jornada 4 (conta sem número): `/conta/aparencia` (3 opções, linhas de 44 px) e as demais telas de `/conta/*` estão sem rolagem lateral em 375 px; contraste WCAG calculado sem falha em todas as 7; campos de 44 a 46 px. Em 1366 vi com captura só `/conta/notificacoes` e `/conta/codigos` (coluna única, sem sobreposição); `/conta/plano`, `/dados`, `/aparencia`, `/novidades` e `/atendimento` ficaram sem captura em 1366. Não alterei nenhum dado.
- Jornada 3, conta sem número: Início ("Primeiros passos": só o passo 1 aberto, os outros 4 em uma linha cada), `/fila` e `/historico` (estado vazio diz o que falta e dá um botão) estão claros no celular. Contraste WCAG calculado sem falha em Início, `/fila`, `/envio/lojas`, `/envio/mensagem` (390). Campos e botões de 46 px; sem rolagem lateral em 375 px.
- Não avaliadas: o conteúdo real de `/fila`, `/envio/*` e `/historico` com número conectado (a conta não tem número e não deve ter); `/catalogo` e `/envio/frases` foram lidos por texto, sem avaliação visual. Em 1366 vi só Início e `/envio/lojas` (os outros estados vazios usam o mesmo cartão).

- Jornada 2: contraste WCAG calculado sem falha em `/configurar/*` e `/conexao` (o texto "Passo N, adiante" lido só por leitor de tela não conta). Campos e botões principais de 44 a 48 px. Sem rolagem lateral em 375 px.

- Contraste WCAG da vendas e de `/entrar`: o menor é 4,86:1 (creme sobre vermelho, passo 1, 17 px); os demais passam de 5,6:1.
- Campos de `/entrar` e `/criar-conta`: 44 a 46 px de altura, fonte de 16 px, `autocomplete` correto, botão principal de 48 px.
- `/assinar` com a conta de cortesia (Atelier): mostra só "Sua conta não paga assinatura" e o botão "Ir para o Início". O fluxo de assinar e pagar não foi avaliado; precisa de conta sem cortesia.
