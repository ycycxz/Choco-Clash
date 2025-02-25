$ErrorActionPreference = 'Stop';

$toolsDir = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$url64 = 'https://github.com/MetaCubeX/mihomo/releases/download/v1.19.2/mihomo-windows-amd64-compatible-v1.19.2.zip'

$sha256 = "14d48b9d6ff60ba5eeccf73cc244bd1af5a0dfb758526f44cc58a11c595a9620"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir

$exePath = Join-Path $toolsDir 'mihomo-windows-amd64-compatible.exe'

$newExePath = Join-Path $toolsDir "$env:ChocolateyPackageName.exe"

Rename-Item -Path $exePath -NewName "$env:ChocolateyPackageName.exe"

Install-BinFile -Name $env:ChocolateyPackageName -Path $newExePath
