$ErrorActionPreference = 'Stop'

Remove-Item -Recurse "$(Get-ToolsLocation)\$env:ChocolateyPackageName"  -Force
