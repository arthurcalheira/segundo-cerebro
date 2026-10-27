---
tipo: decisao
data: 2026-10-27
status: valendo
fonte: conversa de 27/10 ("como a gente pode garantir para acertar mais na identificação das promoções?"; "o desconto anunciado é ATÉ, exemplo, tem bazar que é ATÉ 60%"; "sim para tudo")
---
# Promoções mais certas

**O que motivou:** em 27/10, o painel errou de dois jeitos na FARM.
- A conferência do site criou 6 provisórias, e 5 eram categorias comuns: Blusas, Praia, Em alta, Vestiu e amou e Partes de cima.
- O esquenta FARM Friday virou um botão só, mas misturava 35% (verão) e 20% (alto verão).

Consertos do dia, em branches separadas: `claude/conferencia-categorias`, `claude/farm-friday-dois-botoes` e `claude/vtex-pagina-curta`.

**Decisão:**
1. **"Até NN%" é teto.** O nome da promoção, no painel e nas mensagens, leva o percentual do jeito que a loja escreve, com o "até" ("Bazar até 60% OFF"). Várias faixas de desconto abaixo do teto são normais.
2. **Desconto anunciado contra desconto das peças.** O painel mede o desconto das peças de cada promoção e avisa a administração em três casos:
   - sem "até": dois descontos diferentes, ou o anunciado não bate com as peças;
   - com "até": peça acima do teto, ou nenhuma perto dele.

   O aviso só avisa: não separa a promoção nem muda o nome sozinho.
3. **Provisória só com palavra de promoção.** A conferência só cria provisória quando o link, o nome no menu ou o título da página falam em promoção. Palavras: OFF, %, promo, promoção, bazar, sale, liquida, liquidação, outlet, desconto, black, friday, esquenta, queima. Sem isso, a página fica só como divergência em `/admin`.
4. **Medida semanal.** No Fechamento de segunda, o Gerente traz quantas provisórias e avisos acertaram. Se for preciso, entra um comando de leitura novo no servidor (`promo:decisoes`), liberado por ela no sudo.
5. **Cada erro vira teste.** A home do dia do erro vira fixture de teste.

**Por quê:** a mensagem que chega às assinantes não pode dizer um percentual que as peças não têm. E o botão "Mostrar às assinantes" deve aparecer menos e quase sempre certo.

**Spec:** `/var/lib/openbot/OpenBot/Shared/gerente/spec-promocoes-mais-certas.md` (no servidor do OpenBot). A Engenharia a copia para `docs/superpowers/specs/` do projeto ao fazer o plano.

**Depois, no mesmo dia (plano da Engenharia):**
- As peças da página do verão ("35% OFF no verão") com desconto menor, a 20-22%, ficam no botão como estão ("elas são do verão? se sim, deixa").
- O {desconto} do texto que a afiliada escreve continua sendo o percentual do título da promoção, não o da peça ("Não, o do título").
- A chamada padrão do Bazar passa a ser só o nome da promoção ("🛍️ *Bazar até 60% OFF*"), sem o {desconto} da peça, para não repetir o percentual ("Só o nome", 27/10, depois da revisão do QA).
