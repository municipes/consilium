#!/usr/bin/env bash

# This script performs the initial configuration of Municipes.
# Run this script in the location where your composer.json is.

echo "-- Installo i tipi di Media gestiti ------------------------------------"
composer require municipes/bibliotheca --no-cache
drush -y pm:install bibliotheca

echo "-- Installo i vocabolari -----------------------------------------------"
composer require municipes/lexicum --no-cache
drush -y en lexicum

echo "-- Importo le voci di tassonomia ---------------------------------------"
composer require municipes/lexicum_collatio --no-cache
drush -y en lexicum_collatio
drush migrate:import --all

echo "-- Installo i campi usati dalle entità Node ----------------------------"
composer require municipes/fundamentum --no-cache
drush -y pm:install fundamentum

echo "-- Installo il tipo di contenuto Punto di contatto----------------------"
composer require municipes/domicilium --no-cache
drush -y pm:install domicilium

echo "-- Installo il tipo di contenuto Persona -------------------------------"
composer require municipes/persona --no-cache
drush -y pm:install persona

# echo "-- Installo il tipo di contenuto Luogo ---------------------------------"
# composer require municipes/topographia --no-cache
# drush -y pm:install topographia

# echo "-- Importo i ruoli dell'entity 'User' ----------------------------------"
# composer require municipes/sunchronizo_prosopon --no-cache
# drush -y pm:install sunchronizo_prosopon
# drush migrate:import scuola_roles
