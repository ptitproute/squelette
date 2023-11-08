#!/bin/bash

export GITHUB_PASSWORD=${GITHUB_PASSWORD:=$(read -p "GITEA_PASSWORD non définie, merci de saisir votre mot de passe git : " -s temporaire; echo $temporaire)}

git add .
git commit -p "update"
git push -u https://t.marchal:$(mot_de_passe_encode_url "$GITEA_PASSWORD")@gitea.solyti.com/modelage/debian12.git master
