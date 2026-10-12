---
tipo: decisao
data: 2026-10-12
status: valendo
fonte: conversa de 12/10/2026 (resposta "B" à pergunta sobre "no tom dela")
---
# A cópia por IA entra antes do lançamento

**Decisão:** a Vitrinista mantém a promessa "a mensagem sai no tom dela" e a **cópia por IA (Claude Haiku 4.5, no tom configurado pela assinante) será construída antes do lançamento**. A alternativa de dizer só o que existe hoje (modelo e frases dela) foi descartada.

**Por quê:** a frase "no tom dela" é o posicionamento desde o início (`PRODUCT.md`, "Positioning", item 2) e o que separa a Vitrinista de um bot de promoção. A checagem de fatos do media kit mostrou que o produto de hoje só monta a mensagem por modelo: o `TemplateCopyWriter` preenche o modelo com os dados da peça e sorteia uma das frases de chamada que ela cadastrou. Não há texto redigido por IA.

**O que existe hoje:** a interface `CopyWriter` e o `TemplateCopyWriter` (`ferramenta-grupos/packages/core/src/copy/copy-writer.ts`); o encaixe no envio é `deliver-offer.ts` (a legenda é gerada na hora do envio, com a guarda de tamanho do WhatsApp e a nova tentativa sem modelo); os modelos com variáveis e as frases de chamada (`--cta--`, uma sorteada por mensagem) do Plano 10. A spec geral já previa `ClaudeCopyWriter` com fallback para o `TemplateCopyWriter`, um passo de cópia cerca de 1 hora antes do envio, "editável na fila", e o tom de voz no onboarding.

**O que muda:**
- Vira um plano novo de código (número a definir pelo Construtor; a série do 1 ao 10 e do 5A ao 5G já foi usada). Rascunho da tarefa em `.maestri/tarefa-copy-ia.md`, ainda não despachada.
- **Lançamento só depois dele.** A página de vendas pode ser construída antes, mas não é publicada afirmando "no tom dela" até a cópia por IA existir. Até lá, as peças públicas e o kit dizem "monta a mensagem do jeito da afiliada".
- Documentos legais: `docs/legal/privacidade.md` já cita a Anthropic como operadora do texto por IA e a transferência internacional, marcados "[A DEFINIR: o recurso ainda não existe]"; a 5H precisa tratar isso já com o recurso previsto.
- Na hora do lançamento, trocar de volta nas peças a frase verdadeira de hoje por "no tom dela": o kit (`identidade-botanica/kit/`), o manual e a imagem de compartilhamento da folha do sistema.

**Onde entrou:** só nesta nota, no `STATE.md` do vault e na linha de capacidades do `PRODUCT.md` do projeto (editado em 12/10, sem commit). Ainda não entrou em spec nem plano de código.

**Alternativas descartadas:** (A) dizer só o que existe e adiar o "no tom dela" para depois do lançamento; (C) manter a frase sem o recurso.
