# Estado

Reescrito no fechamento de 11/10/2026 (20h10) pelo Curador; seção "Agora" atualizada em 12/10 à noite, depois do deploy do painel e da página de vendas. Os dias estão em `30-diario/2026-10-10.md`, `30-diario/2026-10-11.md` e `30-diario/2026-10-12.md`.

## Agora (12/10, noite): painel e página de vendas no ar; falta decidir o cadastro

**No ar desde 12/10** (merge, push e deploy autorizados na conversa; `master` `aa655fb` → `4c8b006`, sem migração): o painel na identidade A, nos temas claro e escuro ([[2026-10-12-painel-na-identidade-a]]); a página de vendas em `usevitrinista.com.br`, com o `www` redirecionando para a raiz ([[2026-10-12-pagina-na-raiz-do-dominio]]); e o Atelier à venda. Detalhes e horários em [[2026-10-12]] do diário.

- **A decidir por ela:** abrir o cadastro (`CADASTRO_ABERTO=0`: os botões da página levam a "O cadastro ainda não abriu") e a indexação (`noindex` ligado; recomendação, não confirmada: manter até abrir o cadastro). A cópia por IA segue como condição para a página dizer "no tom dela" ([[2026-10-12-copy-por-ia-antes-do-lancamento]]).
- **Para ela olhar:** o painel e a página no celular de verdade, nos dois temas. O Edge do notebook informa movimento reduzido: nesse modo as entradas ao rolar são só fade de 120 ms; para ver a animação completa, ligar "Efeitos de animação" no Windows.
- **Não conferido:** Trocar peça, Criar conta, ficha de conta na administração e documentos legais a olho; o estado do número `close` no servidor (1 aberto e 1 fechado; o estado antes do deploy não foi lido).
- **Pendências dela mantidas:** Termos de uso identificam uma pessoa física (levar ao advogado na 5H); lacunas do advogado e o que a 5G criou (ver [[pendencias]]); tarefa da copy por IA em `.maestri/tarefa-copy-ia.md`, **não despachada** (ela quer guardar a cota; ler a cota antes de qualquer despacho).
- **Repositório do projeto:** `master` em `4c8b006` no GitHub e no servidor. As branches `plano-5h-pagina-de-vendas`, `painel-identidade-botanica` e `vendas-raiz-e-ajustes` existem só na cópia local e estão contidas no `master`. `docs/marca/estudos-identidade/` e `estudos-logo/` seguem sem versionar. O `BRIEF.md` da página (`ferramenta-grupos/docs/marca/identidade-botanica/landing/`) é do estado de 12/10 à tarde: a página mudou depois (benefícios compactos, "Sua mensagem" dentro de "Como funciona", sem a faixa índigo, barra fixa).
- **Cuidado de cota:** a identidade e o media kit usaram workflows de vários agentes; o painel, a página e o deploy foram feitos sozinhos, sem agentes.

## Próximo: abrir o Construtor (copy por IA e documentos legais da 5H)

Pedido na conversa de 11/10: reiniciar a sessão do Curador e começar a 5H (página de vendas e documentos). Nenhuma sessão foi aberta ainda. **Como a página passou a ser feita no notebook, a tarefa da nuvem precisa ser reescrita só com os documentos legais** antes de despachar.

1. **Conferir o sync do vault** (`git status` limpo e `git log origin/claude/magical-fermi-mfb4ah..HEAD` vazio). No fechamento havia edições locais esperando o próximo commit do Obsidian Git, com o Obsidian aberto.
2. **Ler a cota da semana antes de abrir** (skill `despachar-nuvem`, "Antes"). A última leitura é de 9h02 de 11/10: 58%, antes de mais da metade da 5G. Às 19h57 a barra não mostrou a cota (só `Eff:--`), então o valor atual é desconhecido. Zera na sexta, 16/10, às 16h. Se não der para ler, dizer isso e pedir que ela olhe o `/usage`.
3. **A tarefa está pronta em `.maestri/tarefa-5h.md`** (fora do git, só neste notebook). Ela leva o papel do Construtor, o acerto do `STATE.md` do projeto, as respostas já dadas para os documentos legais, o que a 5G criou e os textos não citam, e a lista do que ele deve perguntar. Reler antes de mandar e ajustar se algo mudou. **Mudou em 11/10 à noite, não despachar como está:** a página de vendas passou a ser desenvolvida no notebook, na cópia local do projeto, como exceção pedida na conversa (ver a última linha do Curador em `30-diario/2026-10-11.md`). A tarefa do Construtor fica só com os documentos legais e o que deles vira código. Se o arquivo tiver sumido, tudo o que ele contém está nas notas citadas abaixo.
4. **Despachar** pela skill `despachar-nuvem`: a cópia local já está no `master` em `aa655fb`. Registrar em [[sessoes-nuvem]], no diário e na nota "Agora".
5. **O que a 5H ainda espera dela**, e que o Construtor vai perguntar no brainstorming:
   - as três perguntas sobre os planos (teste grátis com os recursos do Maison, Maison como "recomendado pela Fran", o alvo ser o Maison) e as outras sugestões de [[ideias]], seção "Planos e página de vendas";
   - as seis lacunas que são do advogado, mais o que a 5G criou e os textos não citam ([[pendencias]]). Sem resposta, ficam marcadas no texto;
   - onde fica o backup externo; Google Analytics ou só o pixel da Meta;
   - as 8 frases de chamada e o link do dashboard da multimarca.
6. **Merge e deploy da 5H pedem confirmação nova.** A autorização de 11/10 ("quando essa próxima tarefa terminar, pode levar pra master") valia só para a 5G e já foi usada. O deploy da 5H mexe no domínio raiz e no Caddy.
7. Textos de venda podem ir para uma sessão `conteudo` em paralelo, se ela pedir. Cada sessão a mais gasta a mesma cota.

## Onde paramos (11/10, 20h10)

- **5G (administração) no ar.** No `master` desde as 19h43 (`aa655fb`, avanço direto de `b45bbc7`, 30 commits, migração `0036`) e no servidor desde as 19h48, os dois com ok dado na conversa. Conferido pelo Curador depois do deploy: containers saudáveis, web e worker nas imagens novas, migração aplicada, número principal conectado com o automático ligado, logs sem erro. O painel de administração foi conferido por quem cuida do produto ("tudo certo"). Decisões: [[2026-10-10-plano-5g-administracao]]. Linha da sessão: [[sessoes-nuvem]].
- **Número de atendimento do Atelier** no servidor desde as 19h52 (`ATENDIMENTO_WHATSAPP`), informado como provisório e não escrito no vault. Não visto na tela: não há assinante Atelier, e a conta de teste do passo 16 de `ferramenta-grupos/docs/implantacao.md` não foi criada.
- **Servidor:** painel em `https://painel.usevitrinista.com.br`, em `aa655fb`, com 5F, 5C e 5G. Último backup do script: 11/10, 19h46.
- **Nuvem:** nenhuma sessão rodando.
- **E-mail do domínio:** caixa `contato@` no Zoho Mail recebendo; falta o DKIM. Ver [[email-do-dominio]].
- **Canvas:** só o terminal do Curador e as notas "Agora" e "Próximos passos". Havia um terminal "Shell" ligado ao Curador que ele não abriu; ficou como estava.

## Ainda por fazer, sem data

- Depois da 5G: ver o cartão "Atendimento Atelier" quando houver a primeira conta no Atelier; trocar o número de atendimento quando houver o definitivo (mudar a linha no `.env` do servidor e rodar o `atualizar.sh`, com confirmação); olhar o log do worker no primeiro apagar real de um número, porque a resposta da Evolution ao apagar uma instância não foi confirmada.
- Com quem cuida do produto ([[pendencias]]): DKIM no Zoho; lacunas para o advogado; prova da autorização das lojas; backup externo; Google Analytics ou não; link do dashboard da multimarca; as 8 frases de chamada; INPI. O `@usevitrinista` no Instagram já está reservado (informado em 11/10).
- Sem decisão, em [[ideias]]: 13 ideias de features e as sugestões de planos e página de vendas.
- Do plano do workspace: atualizar `maestri/configurar-no-windows.md` com as rotinas, o terminal do VPS e o portal.

## Como o vault funciona hoje

- **Pastas no notebook:** `C:\Users\arthu\claude code\segundo-cerebro` (este vault) ao lado do clone do projeto em `claude code\ferramenta grupos` (com espaço). A junction `claude code\ferramenta-grupos` aponta para ele. A cópia local está no `master`; um `next-env.d.ts` alternado ficou no stash dela.
- **Sync:** Obsidian Git 2.41.1, commit-and-sync a cada 10 min e pull ao abrir, mensagem `vault: {{date}}`. **Só roda com o Obsidian aberto.** Agentes locais não fazem commit. O repositório é público.
- **Maestri:** workspace "vitrinista", terminal do Curador com Maestro (aparece no canvas como "Maestro"), rodando `claude -n curador --add-dir ../ferramenta-grupos --append-system-prompt-file maestri/papeis/curador.md`. O Maestri grava o workspace em `C:\Users\arthu\.maestri\workspaces\<id>\`, fora do vault.
- **Rotinas:** Abertura (9h), Vigia da nuvem (a cada 20 min, `maestri/scripts/vigia-nuvem.ps1`, olha o projeto e o vault) e Fechamento (21h30). O vigia avisa a cada push; às vezes repete o aviso de um push já trazido.
- **Modelo do Curador:** `.claude/settings.local.json` (ignorado pelo git) pede o Sonnet a partir da próxima abertura do terminal. A sessão de 10 e 11/10 rodou no Opus 5.5, porque o terminal não foi reaberto. Conferir na reabertura qual modelo sobe.

## Decisões

- Vault separado do código; código e estado técnico só no projeto, e aqui o que não é código.
- O projeto é comandado pelo Curador no Maestri e o código é feito em sessões na nuvem, cada uma com uma função (`maestri/papeis/`). Um construtor por vez; a conversa com o agente é pelo app do Claude: [[2026-10-10-comando-pelo-maestri]].
- Ordem dos planos: 5C e 5G feitos e no ar; falta a 5H. A 5D (mensagens agendadas) saiu dos planos e da oferta do Atelier: [[2026-10-10-sem-mensagens-agendadas]].
- Prazos e avisos dos documentos legais: [[2026-10-10-documentos-legais-prazos]].
- O Curador entra no VPS por chave SSH e faz merge e deploy só com confirmação; uma autorização vale para o que foi dito, e não para o plano seguinte.

## O que aprendemos

Está escrito onde é usado: a skill `despachar-nuvem` (abrir sessão, cota, acompanhar, levar ao `master`), `maestri/papeis/curador.md` (deploy e servidor) e `maestri/plano-workspace.md` (rotinas, memória do notebook). Preço do Maestri: não confirmado (as fontes divergem: US$ 18 pagos uma vez ou US$ 19 por mês).
