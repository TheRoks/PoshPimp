Install-Module oh-my-posh
Install-Module posh-git

.\Meslo\install.ps1

Import-Module oh-my-posh
Import-Module posh-git

Set-Location $PSScriptRoot\ColorTool

.\install.cmd

Write-Host "Finished! Paste the readme in next notepade. Press any key to continue..."
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }
notepad $PROFILE
