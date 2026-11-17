---
tipo: decisao
data: 2026-11-16
status: valendo
fonte: conversa de 16/11
---
# Vitrines separadas dos números; Bento na Fábula

**Decisão (vitrines):**
1. A vitrine passa a ser a coisa principal: tem nome, lojas, regras, fila e grupos próprios e escolhe o número que envia. Várias vitrines podem usar o mesmo número (pedido dela).
2. O limite do plano conta vitrines: 1, 1 e 3, como hoje conta números (resposta dela).
3. Cada vitrine tem o próprio ritmo de envio, mesmo dividindo o número (resposta dela).
4. Um grupo de WhatsApp fica numa vitrine só (resposta dela).
5. Cada número que existe hoje vira uma vitrine com esse número, sem perder regras, fila nem histórico.

**Seguindo a recomendação, sem resposta explícita dela** (levadas a ela em 16/11; se mudar, avisar a Engenharia antes da fase 2 ou 3):
- O teto de números é igual ao de vitrines (1, 1 e 3).
- Proteção do número dividido: continua o piso de 3 minutos entre mensagens por número, somando as vitrines dele (no máximo 20 mensagens por hora), mais um aviso quando a assinante põe a 2ª vitrine no mesmo número. Sem teto menor por hora.
- A palavra "vitrine" só aparece para quem tem ou pode ter mais de uma.
- Da Engenharia, pela recomendação dela: convite e tamanhos seguem a vitrine, e modelos e frases de chamada continuam da conta; a fila de cada vitrine conta as outras do mesmo número na estimativa do dia; a assinante pode apagar uma vitrine desligada; apagar um número com vitrines pede antes que elas troquem de número; a vitrine nova copia as regras da vitrine da vez.

**Por quê:** ela quer que a assinante escolha entre vitrines, e não entre números, podendo usar o mesmo número em mais de uma.

**Risco aceito:** duas vitrines no mesmo número, cada uma no seu intervalo, mandam mais mensagens por hora por aquele número, e o WhatsApp bloqueia quem envia demais. O piso por número e o aviso são a proteção.

**Onde entrou:** ainda não entrou no `master`. Branch `claude/vitrines`: spec em `docs/superpowers/specs/2026-11-16-vitrines-design.md` e plano em `docs/superpowers/plans/2026-11-16-vitrines.md` (`3dbea730`). Quatro fases, cada uma revisada sozinha: (1) banco, sem mudar tela; (2) telas e API; (3) várias vitrines no mesmo número; (4) trocar o número, descida de plano e apagar. A fase 1 (`08c3a30c`, migração 0092) está no QA.

**Alternativas descartadas:** o limite do plano contar números; um ritmo só por número; o mesmo grupo em duas vitrines.

## Bento

**Decisão:** o público "Meninos" da Fábula aparece como "Bento (meninos)", e o Catálogo e as Peças dos Stories têm botões de público com a Fábula aberta (Todos, Meninas, Bento (meninos), Bebê, Teen). No Catálogo o filtro é exato: peça sem público fica de fora. As regras já salvas não mudam.

**Por quê:** no site da Farm o Bento não é marca nem seção separada; o departamento é "Fábula e Bento" e as peças de menino ficam nas páginas de meninos. É o conjunto que o filtro já usava.

**Onde entrou:** `ebcb2a0c` (nome) e `0258d043` (botões), no ar em 16/11.

**Alternativa descartada:** o Bento como loja separada na lista. Foi oferecida como tarefa maior; ela não pediu.
