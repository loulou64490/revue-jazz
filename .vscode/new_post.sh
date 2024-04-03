#!/bin/bash
read -p "Entrez le numéro du post : " nom_post
if [ -z "$nom_post" ]; then
    echo "Le nom du post ne peut pas être vide."
    exit 1
fi
hugo new --kind post "posts/$nom_post.md"
if [ $? -eq 0 ]; then
    echo "Le post a été créé avec succès : content/post/$nom_post.md"
else
    echo "Erreur lors de la création du post."
fi