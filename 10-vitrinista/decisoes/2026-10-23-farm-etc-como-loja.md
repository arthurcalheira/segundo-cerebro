---
tipo: decisao
data: 2026-10-23
status: valendo
fonte: conversa de 23/10, noite ("quero que o farm etc seja uma loja diferente da farm, com categorias e tudo mais"; "seria como se fosse uma subdivisão da farm e não contaria como mais uma loja para o essencial"; respostas "sim" às perguntas 3 a 6; seletor "B")
---
# FARM Etc como loja: uma subdivisão da Farm

**Decisão:** a FARM Etc vira uma loja no painel, com categorias, promoções, robô e mensagem próprios, como uma subdivisão da Farm. Substitui o chip das categorias ([[2026-10-23-farm-etc-no-catalogo]]) quando a loja entrar.
1. **Não conta no limite de lojas do plano,** nem no Essencial: Farm e FARM Etc contam como uma loja.
2. **Código de afiliada:** vem da Farm, sem a assinante digitar de novo; a comissão na FARM Etc é a mesma da Farm (confirmado por ela em 23/10).
3. **Quem já tem a Farm** e não filtra categoria ganha a FARM Etc ligada; quem filtra, não. A mudança vai nas Novidades.
4. **Fila:** o que não é roupa entra no teto de acessório (25%); Farm e FARM Etc juntas no teto por loja (60%).
5. **Os 10% do código valem na FARM Etc** (a mensagem continua prometendo).
6. **Os textos próprios da mensagem** que a assinante escreveu para a Farm são copiados para a FARM Etc.
7. **Seletor de lojas B:** a loja escolhida num botão na linha de Filtros; ao tocar, abre por baixo a lista com Todas as lojas, o grupo FARM (FARM Rio e FARM Etc) e as outras lojas, com a contagem de peças. Tira a linha das abas do topo e cabe qualquer número de lojas.

**Por quê:** pedido dela. A FARM Etc tem 749 peças no site, as mesmas do painel; como subcategorias não existem na árvore do site (as categorias são coleções), a loja própria ganha 10 categorias (Bolsas e mochilas, Roupas, Acessórios, Copos e garrafas, Praia, Esporte, Viagem, Papelaria, Casa, Outros). A queixa de uma assinante, de peças faltando, deve ser peça escondida em "Outro"/"Acessórios" (não confirmado; falta um exemplo).

**Onde entrou:** `ferramenta-grupos`, spec `docs/superpowers/specs/2026-10-23-farm-etc-loja-design.md` e telas do seletor (`claude/farm-etc-loja`, `5ddd15a`, Tear). Fatias: 1 o seletor B (só web, começada em 23/10); 2 a loja (migração que move as peças e reescreve as chaves; ensaio na cópia de teste; depois da fatia 1 da Dress To no `master`); 3 as categorias; 4 a home `/farm-etc` nos avisos e no conferente. Ainda não está no ar.

**Alternativas descartadas:** o seletor A (abas que rolam) e o C (marca e sub-loja, dois toques); a FARM Etc contando como mais uma loja (o Essencial teria de escolher, e o Maison e o Atelier perderiam a Dress To).
