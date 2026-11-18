---
tipo: decisao
data: 2026-11-17
status: valendo
fonte: conversa de 17/11
---
# Lançamentos da Riachuelo por leitor próprio; a Lojix liga no dia da live

**Decisão (lançamentos):**
1. Os lançamentos da Riachuelo entram nas Peças dos Stories por um leitor em script que roda no servidor ("melhor fazer tudo com o script, pode colocar para funcionar e colocar esses dados em produção", ~20h30). Antes, no mesmo dia, ela tinha aprovado a leitura pelo navegador do OpenBot ("monta a leitura da riachuelo").
2. O leitor é o do Gerente, sem disfarce: abre a página de novidades femininas, ordenada por lançamento, num navegador comum, e para se a loja recusar ou pedir verificação. O leitor que ela colou, que esconde que é automático, não roda no servidor nem entra no sistema.
3. A Renner fica de fora: o site recusa este servidor. Saídas para ela: o toque no celular na página de novidades, a autorização confirmada pela loja, ou ela rodar o leitor dela em outro lugar e colar o arquivo na tela de lançamentos, que aceita esse formato.
4. O termo de autorização em PDF que ela mandou não vale como autorização: documento conjunto de duas concorrentes, sem CNPJ, data nem assinatura verificável, e que exige identificação homologada e limite de ritmo não informados. Vale com confirmação por e-mail do domínio da loja e a liberação do servidor.

**Seguindo a recomendação do Gerente, sem resposta explícita dela:**
- O lançamento sai do catálogo 14 dias depois da última vez em que apareceu na página de novidades.
- A rotina roda de hora em hora, das 7h às 23h, 2 páginas por rodada, e só avisa quando falha ou a loja recusa. A primeira carga é de 4 páginas (cerca de 100 peças).
- As cores da mesma peça viram uma peça só; a foto é copiada pelo servidor, porque a loja não deixa a foto dela aparecer dentro de outro site; o link de afiliada só é gerado quando a peça vira story, para não gastar a cota de links curtos.

**Por quê:** a Fran quer ver o que entrou de novo na loja, e a fila do robô dela só traz as peças que ele já escolheu. A lista de produtos da Awin não existe para essas duas lojas (conferido em 14/11).

**Risco aceito:** a Riachuelo pode passar a recusar o servidor, e as regras do site podem não permitir leitura automática. O servidor é o da produção: se a loja marcar o endereço, pode recusar também as fotos que o sistema baixa dela. A regra que vale: recusou ou pediu verificação, parar e avisar.

**Onde entrou:** ainda não entrou no `master`. A parte de receber é a `claude/lancamentos-lote` `f71200fb` (junção `claude/integracao-lancamentos` `7c22ba21`), no QA em 17/11 à noite. O leitor fica fora do projeto, na pasta compartilhada dos agentes no servidor.

**Alternativas descartadas:** o leitor disfarçado; a Vitrinista ler arquivos publicados por um leitor de fora (ficou sem endereço quando ela disse que não haverá servidor novo; o código incompleto está na `claude/lancamentos-arquivos`, que não deve ser juntada); o toque no celular para a Riachuelo.

## Lojix

**Decisão:** a regra que liga a Lojix quando o banner da live está na página inicial da Farm não muda. A Lojix automática fica desligada e é religada no dia da live.

**Por quê:** em 17/11 o banner "vem aí" da live de 19/11 entrou na página inicial, e a regra ligou a Lojix às 15h27 com as peças da live de 04/11 (2 envios com o link do app, num grupo, e o aviso de começo para 1 assinante). Ela preferiu ligar no dia a mudar a regra.

**Onde entrou:** sem mudança de código. A Lojix automática foi desligada em 17/11, ~17h10, e uma rotina de uma vez a religa em 19/11, às 8h (a live é às 12h).

**Alternativa descartada:** mudar a regra do banner para não contar o "vem aí".
