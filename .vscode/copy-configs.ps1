$ErrorActionPreference = "Stop"

# Copy Espanso config directory
if (Test-Path "espanso") { Remove-Item "espanso" -Recurse }
Copy-Item "E:\Programs\Espanso\.espanso" -Destination "espanso" -Recurse

# Copy Kanata's kanata.kbd config
if (Test-Path "kanata") { Remove-Item "kanata" -Recurse }
New-Item "kanata" -ItemType Directory | Out-Null
Copy-Item "E:\Programs\Kanata\kanata.kbd" -Destination "kanata/kanata.kbd"

# Copy PowerShell's profile and Starship.rs config
if (Test-Path "pwsh") { Remove-Item "pwsh" -Recurse }
New-Item "pwsh" -ItemType Directory | Out-Null
Copy-Item "~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Destination "pwsh"
Copy-Item "~\Documents\PowerShell\starship.toml" -Destination "pwsh"

Write-Host "Copied the config files successfully`n" -ForegroundColor Green
