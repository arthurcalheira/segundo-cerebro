---
tipo: decisao
data: 2026-10-17
status: valendo
fonte: conversa com o Curador, 17/10/2026; spec do Tear
---
# Cópia de teste em teste.usevitrinista.com.br

**Decisão:** antes de cada deploy na produção (aberta ao público desde 17/10), a mudança passa por uma cópia do sistema no mesmo servidor, em `teste.usevitrinista.com.br`, com banco, programa de conexão, robô e painel próprios, protegida por senha e fora do Google. Respostas dela às perguntas da spec:
- A cópia nasce com a semente de demonstração adaptada ao servidor (assinaturas como cortesia, números desconectados e com o automático desligado, catálogo real das lojas), não com dados da produção.
- A cópia recebe a branch antes do merge; o `master` e a produção só recebem o que ela aprovou na cópia.
- Escrita por IA e notificações no celular ficam desligadas na cópia, ligadas só para testar essas partes.
- A cópia usa a Stripe de teste (chaves guardadas no servidor em 17/10). O número de teste é o dela, que já está na conta de administração; na cópia ele entra como mais um aparelho conectado.

**Por quê:** ela quer abrir a produção já e ter onde testar sem arriscar quem assina.

**Onde entrou:** spec `ferramenta-grupos/docs/superpowers/specs/2026-10-17-copia-de-teste-design.md`, branch local `claude/copia-de-teste` (Tear), aprovada em 17/10; a montagem no servidor é do Curador, com o ok dela. Registro `teste` criado por ela no registro.br em 17/10.

**Alternativas descartadas:** outro servidor; testar só no notebook (`dev:demo`); a cópia com só o catálogo e a administração; testar o `master` depois do merge.
