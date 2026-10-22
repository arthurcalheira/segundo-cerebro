---
tipo: decisao
data: 2026-10-21
status: valendo
fonte: conversa de 21/10 (a Lojix das 19h; "pensei em fazer uma aba diferente para a lojix", o interruptor no Catálogo, "eu quero esse rotulo", os oks de commit, push e deploy)
---
# Lojix no Catálogo: as peças da live da Farm, à mão, com interruptor e rótulo

**Decisão:** as peças da Lojix, a live mensal da Farm, entram no painel como peças da própria Farm, sem loja nova: mesmo código de afiliada, mesmo plano. **Peça da Lojix é a peça que está na live e não está no site** (decisão dela, 21/10, depois de ver que a coleção `preview` não batia). A sync da Farm lê a live pela API do app, busca no canal de venda da live (6) cada peça que o site não tem e a marca (`vitrinista:lojix`). O link vai para a página da peça com `?sc=6` mais o código de sempre. Na hora de enviar, a reconsulta só cai no canal 6 para peça que está na live. Se a live não responder, a sync da Farm segue, e nada é marcado esgotado nessa volta. A primeira versão (das 15h20) usava a coleção `preview` (1217): ela trazia 45 das peças certas, uma a mais e deixava quatro de fora. **Ajuste no fim da tarde (decisão dela):** só conta o botão "preview" da live. Lendo todos os botões, entravam 25 peças da Lojix passada (lançamento em 30/09, quase todas da Farm Etc) que continuam vendidas só pela live. Com o botão, ficam as 50 da coleção As Cariocas. Se a live vier sem o botão "preview", a sync não marca nada esgotado e deixa um aviso. **Regra final da noite (decisões dela, 21/10):**
- **Quais peças:** a Lojix também revisita lançamentos e dá desconto, então vale toda peça de qualquer botão da live menos o "tá tudo aqui", inclusive as que estão no site.
- **Link:** normal para peça do site; `?sc=6`, com o preço do canal da live, se ela for mais barata na live ou só existir lá.
- **Robô:** recusa só as peças com `?sc=6`.
- **Quando vale:** só com a live no ar (`is_live`) ou com o banner da Lojix na home da Farm. Fora disso, as peças voltam a ser comuns.
- **Mensagem:** a mensagem da Lojix é uma aba editável, como a do reloginho, e substitui o rótulo fixo. Na aba Lojix só vale a chamada dela (antes entrava a da Vitrine).
- **Código de vendedora (decisão final da noite):** 10% em toda peça a preço cheio, Lojix inclusive; em peça com promoção (reloginho, liqui, preço riscado), só o frete. Às 18h ela tinha decidido "na Lojix, só frete"; às 20h30 voltou atrás, porque o modelo das assinantes quebrava sem o preço com código.
- **Peças apresentadas:** a timeline do app da live também conta. A peça mostrada é Lojix mesmo estando só no "tá tudo aqui".
- **Link:** nas peças da Lojix, o do app da live, `lojix.farmrio.com.br/?product=<id>&cod=<código>`; nas outras, o do site. Só nas da Lojix (decisão dela).
- **Reloginho só da live:** cadastrado à mão (`promo:manual`) quando a Farm anuncia fora do site, como o ALTO20. O Catálogo ganhou o interruptor "Lojix": ligado, ele mostra só essas peças, em cor própria (jabuticaba) e com uma onda curta no topo. Os cartões ganharam o selo "Lojix", e a mensagem abre com `🔴 *Lojix*` (rótulo fixo, posto depois de montar o texto, fora do modelo e sem edição pela assinante; o texto pode mudar depois). Por enquanto o robô não escolhe peça da Lojix: é só à mão.

**Por quê:** as peças novas da Lojix de 21/10 (50 das 92 do botão "preview" da live) não existiam no site normal. O painel não as via, e a sync marcaria como indisponível qualquer peça posta à mão. Loja separada pediria código novo de cada assinante e contaria no limite de lojas do plano. O robô ficou de fora porque não se sabe se a Farm credita a vendedora numa compra pelo link com `?sc=6`.

**Onde entrou:** `ferramenta-grupos`, Trama na `claude/lojix` (`8d98d31`, mais o merge da edição livre em `1b3a1c2`; guias `web.md` e `mensagem.md` e o `STATE.md` de lá). `master` e produção em `1b3a1c2` (pela coleção) e, a partir das 16h30 de 21/10, em `09c3c2e` (pela live). Durante a noite subiram, em ordem:
- `1d0edaf` (botão "preview");
- `b7a6e43` (todos os botões);
- `840ef31` (mensagem e aba Lojix);
- `4809220` (`promo:manual`);
- `ed768ee` (`catalog:refresh`);
- `661b9ff` (timeline, chamada, 10%);
- `68bddf1` (link da live, às 21h17).

Pronto e não subido no fechamento: `claude/cupom-formato` (Trama, `bd577b8`). Pesquisa: [[lojix-farm]].

**Alternativas descartadas:**
- A Lojix como loja separada (proposta do Curador antes de ler como o código de afiliada e o plano são guardados).
- A versão de hoje só com as peças da live que já estavam no site: deixava de fora as novidades.
- O robô automático, seguindo a timeline da live (a peça que aparece na tela): o formato só aparece com a live no ar. Fica para a próxima Lojix, com a gravação de 21/10 (`.maestri/lojix-2026-10-21/`).
