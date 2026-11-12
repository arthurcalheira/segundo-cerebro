---
tipo: pesquisa
data: 2026-11-07
conferido: 2026-11-07
---
# Story pela foto: achar a peça pela imagem

## O que importa

- Método: modelo de imagem afinado em moda (FashionSigLIP, licença Apache 2.0), rodando no próprio servidor. Custo zero por busca, ~0,4 s, ~900 MB de memória.
- Prévia contra as 3.224 peças disponíveis da Farm: a peça certa saiu em 1º em 61% das buscas, entre as 5 primeiras em 80% e entre as 8 do pop-up em 83%. A prévia usou uma segunda foto da própria loja, deformada para parecer story; com a Fran vestindo a peça, o acerto deve ser menor.
- Onde erra: outra peça do mesmo look (a Farm fotografa o conjunto) e peças lisas e básicas.
- Ajustes propostos: um toque "Qual peça? Vestido, Blusa, Calça…" antes da busca; 3 fotos por peça no índice.
- Regra proposta para decidir, com ~20 fotos reais: 70% ou mais entre as 8, construir; 50 a 70%, construir e reordenar com o Claude (gasto pequeno, pede o ok dela); abaixo de 50%, desistir. A tela é um plano médio. Ligada a [[2026-11-07-stories-quero-e-publicar]].
- Teste real em 11/11, com 9 fotos da Fran (vestidos Farm, selfie no espelho): 8 estavam no catálogo; foto inteira, 7 de 8 em 1º e 8 de 8 entre as 8 opções (0,6 s); com recorte, 8 de 8 em 1º (2,2 s). Amostra pequena e fácil: falta medir com ~20 fotos variadas. Construído e no ar desde 11/11 (`7d487aca`), em [[2026-11-11-stories-so-quero-e-story-pela-foto]].

## Fontes

- Relatório da Engenharia no projeto: `docs/pesquisa-story-pela-foto/README.md`, branch `claude/story-pela-foto-teste` (`7298c2fd`), 07/11.
