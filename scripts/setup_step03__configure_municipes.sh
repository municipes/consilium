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

echo "-- Installo il tipo di contenuto Persona -------------------------------"
composer require municipes/persona --no-cache
drush -y pm:install persona

echo "-- Installo il tipo di contenuto Unità organizzativa -------------------"
composer require municipes/officium --no-cache
drush -y pm:install officium

echo "-- Installo il tipo di contenuto Incarico ------------------------------"
composer require municipes/mandatum --no-cache
drush -y pm:install mandatum

echo "-- Installo il tipo di contenuto Luogo ---------------------------------"
composer require municipes/sedes --no-cache
drush -y pm:install sedes

echo "-- Installo il tipo di contenuto Dataset -------------------------------"
composer require municipes/elementum --no-cache
drush -y pm:install elementum

# echo "-- Importo i ruoli dell'entity 'User' ----------------------------------"
# composer require municipes/sunchronizo_prosopon --no-cache
# drush -y pm:install sunchronizo_prosopon
# drush migrate:import scuola_roles
