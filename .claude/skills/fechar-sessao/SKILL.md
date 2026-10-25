---
name: fechar-sessao
description: Registra no vault o que a sessão produziu (entregas, decisões, pendências, pesquisa) antes de encerrar. Use ao fim de uma sessão de trabalho, antes de compactar o contexto ou quando pedirem para fechar, registrar ou anotar no segundo cérebro.
---

# Fechar a sessão

1. Liste o que a sessão produziu: entregas, decisões tomadas na conversa, pendências fora do código, pesquisa.
2. Gravar depende de onde você está:
   - **Gerente (OpenBot), no notebook:** grave direto, pelas regras da skill `processar-inbox`.
   - **Outro agente no notebook:** crie uma nota nova em `00-inbox/` (`AAAA-MM-DD-<agente>-<assunto>.md`); o Gerente processa.
   - **Sessão na nuvem:** crie uma nota nova em `00-inbox/`, adicione ao git só esse arquivo, faça commit e push. Não edite arquivos existentes: o Obsidian Git do notebook pode estar mexendo neles.
3. Atualize o `STATE.md` do vault só se mudou a estrutura do vault ou o próximo passo dele.
