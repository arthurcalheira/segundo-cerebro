# Primeiro passo da rotina "Saúde do servidor" da Infra no OpenBot (openbot/plano-workspace.md).
# Chamada:
#   powershell -NoProfile -ExecutionPolicy Bypass -File "C:\Users\arthu\claude code\segundo-cerebro\openbot\scripts\saude-servidor.ps1"
# Só leitura na produção (/opt/curadora): estado dos containers, disco e linhas de erro do worker e da web nas últimas 24 h.
# Sai com 0 e imprime o resumo quando há algo fora do normal; sai com 1 quando está tudo bem ou o servidor não respondeu
# (aí imprime "sem resposta", para a rotina dizer que não conseguiu ler).
# A linha do ssh fica em .openbot\servidor.txt (fora do git: o vault é público).
$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [Text.Encoding]::UTF8
$OutputEncoding = [Text.Encoding]::UTF8

$vault = Split-Path (Split-Path $PSScriptRoot)
$servidor = Join-Path $vault '.openbot\servidor.txt'
if (-not (Test-Path $servidor)) { 'sem resposta: falta .openbot\servidor.txt'; exit 1 }

$ssh = ([IO.File]::ReadAllText($servidor)).Trim() -split '\s+'
# Sem aspa dupla no comando remoto: o PowerShell 5.1 as estraga ao passar o argumento para o ssh.
$remoto = "cd /opt/curadora && ./deploy/compose.sh ps --format '{{.Service}}:{{.State}}:{{.Health}}' </dev/null 2>/dev/null; " +
  "echo ---DISCO; df -P / | tail -1 | awk '{print `$5}'; " +
  "echo ---CONTA; ./deploy/compose.sh logs --since 24h --no-color worker web </dev/null 2>/dev/null | grep -ciE 'error|erro|exception|fatal'; " +
  "echo ---ERROS; ./deploy/compose.sh logs --since 24h --no-color worker web </dev/null 2>/dev/null | grep -iE 'error|erro|exception|fatal' | tail -n 8; " +
  "echo ---FIM"
$ErrorActionPreference = 'Continue'
$saida = & $ssh[0] $ssh[1..($ssh.Count - 1)] $remoto 2>$null
$ErrorActionPreference = 'Stop'
if (-not ($saida -contains '---FIM')) { 'sem resposta do servidor'; exit 1 }

$parte = ''
$servicos = @(); $disco = ''; $conta = 0; $erros = @()
foreach ($l in $saida) {
  if ($l -like '---*') { $parte = $l; continue }
  switch ($parte) {
    '' { if ($l) { $servicos += $l } }
    '---DISCO' { if ($l) { $disco = $l.Trim() } }
    '---CONTA' { if ($l -match '^\d+$') { $conta = [int]$l } }
    '---ERROS' { if ($l) { $erros += $l } }
  }
}

$problemas = @()
foreach ($s in $servicos) {
  $p = $s -split ':'
  if ($p[1] -ne 'running' -or ($p[2] -and $p[2] -ne 'healthy')) { $problemas += "container $($p[0]): $($p[1]) $($p[2])".Trim() }
}
if ($servicos.Count -eq 0) { $problemas += 'nenhum container listado' }
$uso = [int]($disco -replace '\D', '')
if ($uso -ge 85) { $problemas += "disco do servidor em $disco" }
if ($conta -gt 0) { $problemas += "$conta linhas de erro no log do worker e da web em 24 h" }

if ($problemas.Count -eq 0) { exit 1 }
"Problemas: $($problemas -join '; ')"
"Containers: $($servicos -join ', ')"
"Disco: $disco"
if ($erros.Count -gt 0) { 'Últimas linhas de erro:'; $erros }
exit 0
