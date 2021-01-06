#  Install Windows Subsystem for Linux (PowerShell commands)
# ** from: https://docs.microsoft.com/en-us/windows/wsl/install-win10
# **
# ** Install WSL with default Ubunto distro...
#    wsl.exe --install 
# ** Install WSL with specific distro...
#    wsl --install -d <Distribution Name>


Echo ** Step 1 - Enable the Windows Subsystem for Linux
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

Echo ** Step 2 - Update to WSL 2
Echo ** Update windows to Version 1903 or higher, with Build 18362 or higher
WinVer
start ms-settings:windowsupdate
Pause

Echo ** Step 3 - Enable Virtual Machine feature 
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

Echo ** Step 4 - Download the Linux kernel update package
curl.exe -L https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -o wsl_update_x64.msi
echo ** install wsl_update_x64.msi
pause
wsl_update_x64.msi
pause

Echo ** Step 5 - Set WSL 2 as your default version
wsl --set-default-version 2

# ** Notes: download Ubuntu 18.04 LTS
# Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile Ubuntu.appx -UseBasicParsing
# ** or...
# curl.exe         -L https://aka.ms/wsl-ubuntu-1804		-o Ubuntu.appx 
#
# ** install downloaded package. **
Add-AppxPackage .\Ubuntu.appx

