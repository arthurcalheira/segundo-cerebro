---
tipo: decisao
data: 2026-10-24
status: valendo
fonte: conversa de 24/10 ("o texto padrão da mensagem tá só como 'promoção rs239'… quero fazer uma função onde a vendedora consiga editar o texto de cada promoção ativa individualmente"; respostas "1. sim 2. sua recomendação")
---
# O texto de cada promoção: nome pela administração e edição da vendedora presa à série

**Decisão:**
1. **Agora (etapa 1):** cada promoção ganha um "Nome na mensagem" definido pela administração (na tela `/admin/promocoes/<id>` e na Promoção à mão), que vale para todas as assinantes e que a leitura do site não sobrescreve. Vazio = o nome automático. Primeiro uso: a ação relâmpago da Farm (promoção 3820), "Ação relâmpago! ⚡ Vestidos a R$ 239".
2. **Depois (etapa 2):** em Mensagem, uma seção "Promoções no ar" onde cada vendedora edita o texto de cada promoção ativa, só para ela, por cima do nome da administração. **O texto fica preso à série da promoção** (recomendação do Curador, aceita): o reloginho que volta a cada hora reaproveita o texto dela. Quando a promoção acaba, ela sai da lista.
3. **Detalhes da etapa 2, respostas dela à spec da Trama (24/10, fim da tarde):**
   - ela edita **só o nome** da promoção (o `--promo--`), uma linha de até 60 caracteres, com emoji; ordem: o dela, o da administração, o automático;
   - a série (loja + cupom; sem cupom, a página do link; na promoção à mão, a coleção) lembra o texto **para sempre**, com duas salvaguardas propostas pelo Curador e aceitas: as variáveis **{desconto}** e **{preço}**, que o painel preenche ("Bazar {desconto} OFF 🔥" sai 30% hoje e 50% amanhã), com aviso se ela escrever o número à mão; e "usando o seu texto de 20/10" na lista quando o texto for reaproveitado;
   - o nome dela aparece **só na mensagem** (envio e prévia); Catálogo e Início ficam com o nome da Vitrinista;
   - **em todos os planos**, inclusive o Essencial (a Trama recomendava só Maison e Atelier);
   - por conta, não por grupo;
   - junto, o **conserto do Bazar renomeado** (a aba do modelo escolhida pelo nome automático, não pelo editado) e um **nome automático mais esperto**, que reconhece pelo texto do site ação relâmpago ("piscou, perdeu"), reloginho, liqui, bazar, leve N e preço.

4. **Substituído na madrugada de 25/10 pela mensagem por promoção** (ideia dela depois de ver a troca do nome no celular: no Bazar a mensagem já sai bem; "editar a mensagem como um todo na promoção", com um lugar só). Duas camadas num editor só: a **mensagem geral**, com a linha da promoção automática e não editável, e a **mensagem própria de cada promoção** (inteira, presa à série, para sempre). Respostas dela: "linha de promoção não editável, a mudança também vai para as promoções, só pode mudar a primeira linha de cada promoção [no Essencial] e aparece no seletor como se fossem promoções [Vitrine e Lojix]"; avisar a Dani ("sim"). Saíram as abas por tipo, a faixa e o campo do nome (ninguém tinha usado: `promo_texts` vazia). No ar em `17300e9d` ([[2026-10-25]]).

**Por quê:** a mensagem da ação relâmpago saía "Promoção R$ 239": o nome automático vem do título do banner e cai no genérico quando há muitas palavras antes do preço; a vendedora só editava o modelo da aba, que vale para todas as promoções do tipo.

**Onde entrou:** `ferramenta-grupos`, etapa 1 pela Trama em `claude/nome-da-promocao` (migração 0067, `store_promos.display_name`; comando `./deploy/cli.sh promo:nome <id> "<texto>"` ou `--automatico`), no ar em 24/10 em `aff75929`; a 3820 com "Ação relâmpago! ⚡ Vestidos a R$ 239". Etapa 2: spec `docs/superpowers/specs/2026-10-24-texto-da-vendedora-design.md` (Trama, `claude/texto-da-vendedora`, `264faf1d`), fatia 1 começada em 24/10 (tabela `promo_texts`, migração 0069). Até o conserto, não renomear o Bazar nem a Liqui na administração.

**Alternativas descartadas:** gravar o nome direto no banco (a leitura do site sobrescreve o título); o texto da vendedora preso a cada promoção (ela reescreveria a cada hora no reloginho).
