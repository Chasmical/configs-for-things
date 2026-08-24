Set-PSReadlineKeyHandler -Key Tab -Function AcceptSuggestion

Set-Alias -Name code -Value code-insiders

function Invoke-Starship-PreCommand {
    # Set window's title to PWD
    $Host.UI.RawUI.WindowTitle = $PWD

    # Separate prompts with a newline
    if ($global:NotFirst) { Write-Host ""; }
    $global:NotFirst = $true
}

$env:STARSHIP_CONFIG = "C:\Users\Chasmical\Documents\PowerShell\starship.toml"
Invoke-Expression (&starship init powershell)
