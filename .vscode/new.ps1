#!/usr/bin/env pwsh

# Demander le numéro du post à l'utilisateur
$NUMERO = Read-Host -Prompt "Numéro du post"

# Vérifier si le numéro du post est fourni
if ([string]::IsNullOrEmpty($NUMERO)) {
  Write-Error "Erreur : Veuillez fournir un numéro de post valide."
  exit 1
}

# Générer le nom du fichier Markdown
$NOM_FICHIER = "posts/$NUMERO.md"

# Vérifier si le fichier Markdown existe déjà
if (Test-Path $NOM_FICHIER) {
  Write-Error "Erreur : Un fichier Markdown existe déjà avec ce numéro de post ($NUMERO)."
  exit 1
}

# Exécuter la commande Hugo new
hugo new --kind post $NOM_FICHIER

# Afficher un message de confirmation
Write-Host "Post créé avec succès : $NOM_FICHIER"