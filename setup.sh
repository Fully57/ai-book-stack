#!/bin/bash
cd /opt/bookstack

# Charger les variables
source .env

# Lancer les conteneurs
docker-compose pull
docker-compose up -d
