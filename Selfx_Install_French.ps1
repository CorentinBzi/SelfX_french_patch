﻿# Définir l'URL du projet GitHub et le chemin de destination
$url = "https://github.com/damienvanrobaeys/SelfX/archive/refs/heads/main.zip"
$destination = "$env:USERPROFILE\Desktop\SelfX-main.zip"

# Télécharger le projet GitHub
Invoke-WebRequest -Uri $url -OutFile $destination

# Extraire le zip
$extractPath = "$env:USERPROFILE\Desktop\SelfX-main"
Expand-Archive -Path $destination -DestinationPath $extractPath -Force

# Se déplacer dans le répertoire extrait et installer la version standard
Set-Location -Path "$extractPath\SelfX-main\SelfX Standard"
# Exécutez la commande d'installation appropriée ici
.\Install_tool.ps1

# Demander où est le dossier "SelfX FR"
$sourceXmlPath = Read-Host -Prompt 'Enter the path to the "SelfX FR" folder'

# Ajouter les fichiers "\*.xml"
$sourceXmlPath = Join-Path -Path $sourceXmlPath -ChildPath "*.xml"

# Remplacer les fichiers XML
$destinationXmlPath = "$env:LOCALAPPDATA\SelfX\"
Copy-Item -Path $sourceXmlPath -Destination $destinationXmlPath -Force
