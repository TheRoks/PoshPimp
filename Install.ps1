Install-Module oh-my-posh
Install-Module posh-git

Invoke-WebRequest -Uri 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip' -OutFile .\Meslo.zip

Expand-Archive .\Meslo.zip

.\Meslo\fonts-master\install.ps1

Remove-Item .\meslo.zip
Remove-Item .\meslo -Recurse

Import-Module oh-my-posh
Import-Module posh-git

#if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }
#notepad $PROFILE

Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/waf/dracula-cmd/master/dist/ColorTool.zip' -OutFile .\ColorTool.zip

Expand-Archive .\ColorTool.zip

.\ColorTool\instal.cmd
