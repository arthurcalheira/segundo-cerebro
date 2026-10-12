---
tipo: decisao
data: 2026-10-12
status: valendo
fonte: conversa de 12/10 com o Claude Code no notebook ("pode publicar no endereço principal")
---
# Página de vendas na raiz do domínio

**Decisão:** a página de vendas abre em `usevitrinista.com.br`. O `www` redireciona para a raiz. Qualquer outro caminho da raiz (entrar, criar conta, documentos) vai para `painel.usevitrinista.com.br`, porque a sessão e o cadastro são do painel. A página segue com `noindex` por enquanto.

**Por quê:** era o combinado de 12/10, e ela autorizou a publicação, o push e o deploy na conversa. O `noindex` fica porque o cadastro continua fechado (`CADASTRO_ABERTO=0`): não faz sentido aparecer no Google com botões que levam a "O cadastro ainda não abriu". Isso é recomendação do Claude Code e ela ainda não respondeu: **não confirmado**.

**Onde entrou:** `ferramenta-grupos/deploy/Caddyfile` (bloco da `DOMINIO_RAIZ`, com o cabeçalho que avisa a web de que `/` é a página de vendas), `docker-compose.yml`, `.env.example` e o teste do Caddyfile em `apps/worker/test/deploy-files.test.ts`. A variável `DOMINIO_RAIZ` foi acrescentada ao `deploy/.env` do servidor. Os dois registros A da raiz e do `www` foram criados por ela no registro.br; os certificados saíram às 19h21 de 12/10.

**Alternativas descartadas:** redirecionar `/` para `/vendas` (a URL pública ficaria `usevitrinista.com.br/vendas`). Erro achado e corrigido no mesmo dia: com o rewrite, o navegador via o caminho `/` e desenhava a barra de ícones do painel por cima da página no celular; o commit `0a416b6` tirou a casca do painel nessa situação.
