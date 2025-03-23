$ErrorActionPreference = 'Stop'

Get-Process -Name 'clash' -ErrorAction SilentlyContinue | Stop-Process
