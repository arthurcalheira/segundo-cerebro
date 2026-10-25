# Primeiro passo da rotina "Vigia da nuvem" do Gerente no OpenBot (openbot/plano-workspace.md).
# Chamada:
#   powershell -NoProfile -ExecutionPolicy Bypass -File "C:\Users\arthu\claude code\segundo-cerebro\openbot\scripts\vigia-nuvem.ps1"
# Olha o projeto e o vault. Sai com 0 e imprime uma linha só quando alguma branch mudou no GitHub;
# sai com 1 quando nada mudou (a rotina encerra com openbot.routine_no_update).
$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [Text.Encoding]::UTF8
$OutputEncoding = [Text.Encoding]::UTF8

$vault = Split-Path (Split-Path $PSScriptRoot)
$estado = Join-Path $vault '.openbot\vigia-refs.txt'
# soDeFora: ignora o que o HEAD local já contém. No vault, o Obsidian Git do notebook
# faz push a cada 10 min; só interessa o que veio de outra máquina (sessão na nuvem).
$repos = @(
  @{ nome = 'projeto'; pasta = (Join-Path (Split-Path $vault) 'ferramenta-grupos'); soDeFora = $false },
  @{ nome = 'vault'; pasta = $vault; soDeFora = $true }
)

$antes = @{}
if (Test-Path $estado) {
  [IO.File]::ReadAllLines($estado) | ForEach-Object { $p = $_ -split ' '; if ($p.Count -eq 2) { $antes[$p[0]] = $p[1] } }
}

$agora = @{}
$tudo = @()
foreach ($r in $repos) {
  $prefixo = "$($r.nome):"
  $doRepo = @($antes.Keys | Where-Object { $_.StartsWith($prefixo) })

  $falhou = $false
  try { git -C $r.pasta fetch origin --prune -q 2>$null; if ($LASTEXITCODE -ne 0) { $falhou = $true } } catch { $falhou = $true }
  if ($falhou) {
    # Sem rede: mantém a última leitura deste repositório.
    foreach ($k in $doRepo) { $agora[$k] = $antes[$k] }
    continue
  }

  $refs = @{}
  git -C $r.pasta for-each-ref --format='%(refname:short) %(objectname:short)' refs/remotes/origin |
    ForEach-Object { $p = $_ -split ' '; if ($p[0] -like 'origin/*' -and $p[0] -ne 'origin/HEAD') { $refs[$p[0]] = $p[1] } }

  foreach ($b in ($refs.Keys | Sort-Object)) {
    $k = "$prefixo$b"
    $agora[$k] = $refs[$b]
    # Primeira leitura do repositório: só grava a referência.
    if ($doRepo.Count -eq 0 -or $antes[$k] -eq $refs[$b]) { continue }
    if ($r.soDeFora) {
      git -C $r.pasta merge-base --is-ancestor $refs[$b] HEAD
      if ($LASTEXITCODE -eq 0) { continue }
    }
    $assunto = git -C $r.pasta log -1 --format=%s $refs[$b]
    if ($antes.ContainsKey($k)) { $tudo += "$($r.nome) $b $($antes[$k])..$($refs[$b]) ($assunto)" }
    else { $tudo += "$($r.nome) $b nova em $($refs[$b]) ($assunto)" }
  }
  foreach ($k in $doRepo) {
    if (-not $refs.ContainsKey($k.Substring($prefixo.Length))) { $tudo += "$($r.nome) $($k.Substring($prefixo.Length)) apagada" }
  }
}

# Sem BOM: o Set-Content do PowerShell 5.1 grava BOM e estragaria a primeira chave.
New-Item -ItemType Directory -Force (Split-Path $estado) | Out-Null
[IO.File]::WriteAllLines($estado, [string[]]($agora.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Name) $($_.Value)" }))

if ($tudo.Count -eq 0) { exit 1 }
Write-Output ($tudo -join ' | ')
exit 0
