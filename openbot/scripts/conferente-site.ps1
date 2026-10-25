# Primeiro passo da rotina "Conferente do site" do Gerente no OpenBot (openbot/plano-workspace.md).
# Chamada:
#   powershell -NoProfile -ExecutionPolicy Bypass -File "C:\Users\arthu\claude code\segundo-cerebro\openbot\scripts\conferente-site.ps1"
# Lê no servidor o resultado do conferente (`./deploy/cli.sh site:conferir`, decisão 2026-10-22-conferente-do-site).
# Sai com 0 e imprime as divergências quando aparece alguma nova (ou loja sem leitura); sai com 1 quando nada
# mudou ou o servidor não respondeu (a rotina encerra com openbot.routine_no_update).
# A linha do ssh fica em .openbot\servidor.txt (fora do git: o vault é público), ex.: ssh -i <chave> -o BatchMode=yes <usuário>@<host>
$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [Text.Encoding]::UTF8
$OutputEncoding = [Text.Encoding]::UTF8

$vault = Split-Path (Split-Path $PSScriptRoot)
$servidor = Join-Path $vault '.openbot\servidor.txt'
$estado = Join-Path $vault '.openbot\conferente-chaves.txt'
if (-not (Test-Path $servidor)) { exit 1 }

$ssh = ([IO.File]::ReadAllText($servidor)).Trim() -split '\s+'
# O cli.sh escreve "Instalação: …" no stderr; com Stop, o PowerShell 5.1 trataria isso como erro.
$ErrorActionPreference = 'Continue'
$saida = & $ssh[0] $ssh[1..($ssh.Count - 1)] 'cd /opt/curadora && ./deploy/cli.sh site:conferir </dev/null' 2>$null
if ($LASTEXITCODE -ne 0) { exit 1 }
$ErrorActionPreference = 'Stop'

$texto = ($saida -join "`n")
$inicio = $texto.IndexOf('{')
if ($inicio -lt 0) { exit 1 }
try { $json = $texto.Substring($inicio) | ConvertFrom-Json } catch { exit 1 }

$agora = @()
foreach ($a in @($json.abertas)) { if ($a) { $agora += "$($a.loja)|$($a.chave)" } }
foreach ($s in @($json.semLeitura)) { if ($s) { $agora += "$($s.loja)|sem_leitura" } }

$antes = @()
if (Test-Path $estado) { $antes = [IO.File]::ReadAllLines($estado) }
[IO.File]::WriteAllLines($estado, [string[]]$agora)

$novas = @($agora | Where-Object { $antes -notcontains $_ })
if ($novas.Count -eq 0) { exit 1 }

"Novas: $($novas -join ', ')"
$texto.Substring($inicio)
exit 0
