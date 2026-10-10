# Pre-run da rotina "Vigia da nuvem" do Maestri (roda pelo cmd.exe).
# Chamada sem aspas, que o Maestri no Windows não aceita no pre-run:
#   cd /d %MAESTRI_WORKSPACE_DIR% && powershell -NoProfile -ExecutionPolicy Bypass -File maestri\scripts\vigia-nuvem.ps1
# Sai com 0 e imprime uma linha só quando alguma branch do projeto mudou no GitHub;
# sai com 1 (rotina não dispara, nenhum token gasto) quando nada mudou ou o fetch falhou.
$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [Text.Encoding]::UTF8
$OutputEncoding = [Text.Encoding]::UTF8

$vault = Split-Path (Split-Path $PSScriptRoot)
$projeto = Join-Path (Split-Path $vault) 'ferramenta-grupos'
$estado = Join-Path $vault '.maestri\vigia-refs.txt'

try { git -C $projeto fetch origin --prune -q 2>$null } catch { exit 1 }
if ($LASTEXITCODE -ne 0) { exit 1 }

$agora = @{}
git -C $projeto for-each-ref --format='%(refname:short) %(objectname:short)' refs/remotes/origin |
  ForEach-Object { $p = $_ -split ' '; if ($p[0] -like 'origin/*' -and $p[0] -ne 'origin/HEAD') { $agora[$p[0]] = $p[1] } }

$antes = @{}
if (Test-Path $estado) {
  [IO.File]::ReadAllLines($estado) | ForEach-Object { $p = $_ -split ' '; $antes[$p[0]] = $p[1] }
}

# Sem BOM: o Set-Content do PowerShell 5.1 grava BOM e estragaria a primeira chave.
New-Item -ItemType Directory -Force (Split-Path $estado) | Out-Null
[IO.File]::WriteAllLines($estado, [string[]]($agora.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Name) $($_.Value)" }))

# Primeira leitura: só grava a referência.
if ($antes.Count -eq 0) { exit 1 }

$mudancas = foreach ($b in ($agora.Keys | Sort-Object)) {
  if ($antes[$b] -ne $agora[$b]) {
    $assunto = git -C $projeto log -1 --format=%s $agora[$b]
    if ($antes.ContainsKey($b)) { "$b $($antes[$b])..$($agora[$b]) ($assunto)" }
    else { "$b nova em $($agora[$b]) ($assunto)" }
  }
}
$removidas = $antes.Keys | Where-Object { -not $agora.ContainsKey($_) } | ForEach-Object { "$_ apagada" }
$tudo = @($mudancas) + @($removidas) | Where-Object { $_ }
if ($tudo.Count -eq 0) { exit 1 }
Write-Output ($tudo -join ' | ')
exit 0
