# Check if Chocolatey is installed, and if not, install it
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
} else {
    Write-Output "Chocolatey is already installed."
}

# Install Firefox using Chocolatey
Write-Output "Installing Firefox..."
choco install firefox -y


# Discord and steam installations get stuck. Probably an issue with chocolatey ToDo create an issue to diagnose and fix this
# # Install Discord using Chocolatey
# Write-Output "Installing Discord..."
# choco install discord -y

# # Install Steam using Chocolatey
# Write-Output "Installing Steam..."
# choco install steam -y

Write-Output "All installations are complete."
