#!/bin/bash

# Demander le numéro du post à l'utilisateur
read -p "Numéro du post : " NUMERO

# Vérifier si le numéro du post est fourni
if [ -z "$NUMERO" ]; then
  echo "Erreur : Veuillez fournir un numéro de post valide."
  exit 1
fi

# Générer le nom du fichier Markdown
NOM_FICHIER="posts/$NUMERO.md"

# Vérifier si le fichier Markdown existe déjà
if [ -f "$NOM_FICHIER" ]; then
  echo "Erreur : Un fichier Markdown existe déjà avec ce numéro de post ($NUMERO)."
  exit 1
fi

# Exécuter la commande Hugo new
hugo new --kind post "$NOM_FICHIER"

# Afficher un message de confirmation
echo "Post créé avec succès : $NOM_FICHIER"
