#!/bin/bash

# Demander le nom du post à l'utilisateur
read -p "Entrez le nom du post : " nom_post

# Vérifier si le nom du post est vide
if [ -z "$nom_post" ]; then
    echo "Le nom du post ne peut pas être vide."
    exit 1
fi

# Exécuter la commande Hugo avec le nom du post
hugo new --kind post "posts/$nom_post.md"

# Vérifier si la commande s'est exécutée avec succès
if [ $? -eq 0 ]; then
    echo "Le post a été créé avec succès : content/post/$nom_post.md"
else
    echo "Erreur lors de la création du post."
fi
