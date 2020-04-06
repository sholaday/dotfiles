<#
  Script for using Chocolatey to install programs.
  
  First, install Chocolatey (https://chocolatey.org/install) using
  these commands in PowerShell as an administrator:
  Set-ExecutionPolicy AllSigned 
  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
  
  Next, run this script to install all desired applications and pin
  self-updating applications so Chocolatey leaves those alone when you
  run an update with choco upgrade.
#>

# install Chocolatey
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# install Windows applications
choco install notepadplusplus --yes
choco install firefox --yes
choco install steam --yes
choco install libreoffice-fresh --yes
choco install vlc --yes
choco install gimp --yes
choco install obs-studio --yes
choco install discord --yes
choco install windirstat --yes
choco install malwarebytes --yes
choco install musescore --yes
choco install anki --yes
choco install rufus --yes
choco install gpg4win --yes

# pin self-updating applications to their installed version
choco pin add --name firefox
choco pin add --name steam
choco pin add --name discord
