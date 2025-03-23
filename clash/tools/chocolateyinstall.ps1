$ErrorActionPreference = 'Stop';

$toolsDir = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"

$url64 = 'https://github.com/MetaCubeX/mihomo/releases/download/v1.19.3/mihomo-windows-amd64-compatible-v1.19.3.zip'

$sha256 = "fc5b94cf7a956dffead5090682c68cdc97c86787b51f4b54b5ff54283ec034d9"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir

$exePath = Join-Path $toolsDir 'mihomo-windows-amd64-compatible.exe'

$newExePath = Join-Path $toolsDir "$env:ChocolateyPackageName.exe"

Rename-Item -Path $exePath -NewName "$env:ChocolateyPackageName.exe"

Install-BinFile -Name $env:ChocolateyPackageName -Path $newExePath
