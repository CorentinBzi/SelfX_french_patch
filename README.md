# Patch Français pour SelfX
Ce dépôt contient un patch pour l'outil SelfX qui traduit tout le contenu en français. L'outil SelfX original: https://github.com/damienvanrobaeys/SelfX

## Solution
La solution consiste à remplacer les fichiers XML dans l'installation de SelfX par des versions françaises. Ces fichiers XML français se trouvent dans le dossier "SelfX FR" de ce dépôt.

## Installation
Pour installer le patch français pour SelfX, suivez ces étapes :

1.	Téléchargez ou clonez ce dépôt sur votre machine locale.
2.	Accédez au répertoire où vous avez téléchargé ou cloné le dépôt.
3.	Exécutez le script PowerShell Selfx_Install_French.ps1. Ce script effectuera les opérations suivantes :
	-	Téléchargement de l'outil SelfX depuis son dépôt GitHub.
	-	Extraction du fichier zip téléchargé.
	-	Installation de la version standard de SelfX.
	-	Remplacement des fichiers XML dans l'installation de SelfX par les versions françaises du dossier "SelfX FR".