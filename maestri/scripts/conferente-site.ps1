# Pre-run da rotina "Conferente do site" do Maestri (roda pelo cmd.exe).
# Chamada sem aspas, que o Maestri no Windows não aceita no pre-run:
#   cd /d %MAESTRI_WORKSPACE_DIR% && powershell -NoProfile -ExecutionPolicy Bypass -File maestri\scripts\conferente-site.ps1
# Lê no servidor o resultado do conferente (`./deploy/cli.sh site:conferir`, decisão 2026-10-22-conferente-do-site).
# Sai com 0 e imprime as divergências quando aparece alguma nova (ou loja sem leitura); sai com 1 (rotina não
# dispara, nenhum token gasto) quando nada mudou ou o servidor não respondeu.
# A linha do ssh fica em .maestri\servidor.txt (fora do git: o vault é público), ex.: ssh -i <chave> -o BatchMode=yes <usuário>@<host>
$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [Text.Encoding]::UTF8
$OutputEncoding = [Text.Encoding]::UTF8

$vault = Split-Path (Split-Path $PSScriptRoot)
$servidor = Join-Path $vault '.maestri\servidor.txt'
$estado = Join-Path $vault '.maestri\conferente-chaves.txt'
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
