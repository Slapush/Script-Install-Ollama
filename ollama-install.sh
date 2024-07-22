#!/bin/bash

# Téléchargement et installation de Ollama
curl -fsSL https://ollama.com/install.sh | sh

# Téléchargement du modèle llama2
ollama pull llama2

# Mise à jour des paquets et installation des certificats nécessaires
sudo apt-get update
sudo apt-get install -y ca-certificates curl

# Création du répertoire pour les clés et téléchargement de la clé GPG de Docker
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Ajout du dépôt Docker à la liste des sources
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Mise à jour des paquets après l'ajout du dépôt Docker
sudo apt-get update

# Installation de Docker et des plugins associés
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Exécution du conteneur open-webui
docker run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://127.0.0.1:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main
