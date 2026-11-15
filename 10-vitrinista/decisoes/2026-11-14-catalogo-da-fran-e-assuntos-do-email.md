---
tipo: decisao
data: 2026-11-14
status: valendo
fonte: conversa de 14/11
---
# Renner e Riachuelo pela fila do robô da Fran; assuntos do lembrete por e-mail

**Decisão:**
1. A Renner e a Riachuelo entram na Vitrinista pelo banco do robô da Fran (Supabase), lido só para leitura, a cada 4 h, junto com a sincronização das outras lojas (pedido dela). O link de afiliada sai do modelo da loja com o código da conta, como no feed, e não do link pronto do robô. O feed da Awin fica de reserva: sem a variável da conexão, volta o feed.
2. A peça colada pela assinante nunca é sobrescrita pela sincronização.
3. O robô da Fran fica como está (programa da Riachuelo dele diferente do da Vitrinista; as vendas dela aparecem, confirmado por ela).
4. Assuntos do lembrete da assinatura pela metade, no estilo que ela escolheu: "Faltou só um passo para começar 💛" e "Seu plano ainda está te esperando".

**Por quê:** a Awin não tem feed dessas duas lojas na conta da Vitrinista, e o combinado da Fran com as lojas cobre o uso das peças.

**Limites aceitos:** o banco é a fila do robô, não o catálogo inteiro (só as peças que ele separou); a 1ª sincronização traz 0 peças e a 2ª traz tudo; as fotos do Drive são pesadas (2,6 MB) e deixam o painel mais lento nessas peças; os cupons ficam para depois.

**Onde entrou:** `claude/catalogo-supabase-fran` `4e61ded6` (QA aprovou o código); sobe depois que ela gravar a conexão no servidor. Assuntos em `8adce36f`, no ar em 14/11.

**Alternativas descartadas:** pedir à Awin o feed das duas lojas (não existe na conta); usar o link pronto do robô.
