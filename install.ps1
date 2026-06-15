#!/usr/bin/env pwsh
# install.ps1

$InstallPath = "$env:TEMP\MyApp"
$ExeUrl = "https://github.com/username/repo/releases/latest/download/app.exe"
$ExePath = "$InstallPath\app.exe"

if (!(Test-Path $InstallPath)) { New-Item -ItemType Directory -Path $InstallPath -Force | Out-Null }

Invoke-WebRequest -Uri $ExeUrl -OutFile $ExePath -UseBasicParsing

& $ExePath
