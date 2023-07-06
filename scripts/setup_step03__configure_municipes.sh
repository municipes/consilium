#!/usr/bin/env bash

# This script performs the initial configuration of Municipes.
# Run this script in the location where your composer.json is.

echo "-- Installo i tipi di Media gestiti ------------------------------------"
composer require municipes/bibliotheca:0.95 --no-cache
drush -y pm:install bibliotheca

echo "-- Installo i vocabolari -----------------------------------------------"
composer require municipes/lexicum:0.95 --no-cache
drush -y en lexicum

echo "-- Importo le voci di tassonomia ---------------------------------------"
composer require municipes/lexicum_collatio:0.95 --no-cache
drush -y en lexicum_collatio
drush migrate:import --all

echo "-- Installo i campi usati dalle entità Node ----------------------------"
composer require municipes/fundamentum:0.95 --no-cache
drush -y pm:install fundamentum

echo "-- Installo il tipo di contenuto Persona -------------------------------"
composer require municipes/persona:0.95 --no-cache
drush -y pm:install persona

echo "-- Installo il tipo di contenuto Unità organizzativa -------------------"
composer require municipes/officium:0.95 --no-cache
drush -y pm:install officium

echo "-- Installo il tipo di contenuto Incarico ------------------------------"
composer require municipes/mandatum:0.95 --no-cache
drush -y pm:install mandatum

echo "-- Installo il tipo di contenuto Luogo ---------------------------------"
# composer require -n "geocoder-php/nominatim-provider:^5.7"
composer require municipes/sedes:0.95 --no-cache
drush -y pm:install sedes

echo "-- Installo il tipo di contenuto Dataset -------------------------------"
composer require municipes/elementum:0.95 --no-cache
drush -y pm:install elementum

echo "-- Installo il tipo di contenuto Evento --------------------------------"
composer require municipes/eventum:0.95 --no-cache
drush -y pm:install eventum

echo "-- Installo il tipo di contenuto Documento pubblico --------------------"
composer require municipes/documentum:0.95 --no-cache
drush -y pm:install documentum

echo "-- Installo il tipo di contenuto Notizia -------------------------------"
composer require municipes/nuntius:0.95 --no-cache
drush -y pm:install nuntius

echo "-- Installo il tipo di contenuto Sito tematico -------------------------"
composer require municipes/thematis:0.95 --no-cache
drush -y pm:install thematis

echo "-- Installo il tipo di contenuto Servizio -------------------------------"
composer require municipes/opera:0.95 --no-cache
drush -y pm:install opera

echo "-- Installo il tipo di contenuto Pagina --------------------------------"
composer require municipes/pagina:0.95 --no-cache
drush -y pm:install pagina

echo "-- Installo il tipo di contenuto FAQ -----------------------------------"
composer require municipes/quaestio:0.95 --no-cache
drush -y pm:install quaestio

echo "-- Importo le impostazioni di ricerca ----------------------------------"
composer require municipes/investigatio:0.95 --no-cache
drush -y pm:install investigatio

echo "-- Importo le viste ----------------------------------------------------"
composer require municipes/prospectus:0.95 --no-cache
drush -y pm:install prospectus

echo "-- Importo i menu ------------------------------------------------------"
composer require municipes/navigatio:0.95 --no-cache
drush -y pm:install navigatio

drush migrate:import node_common
drush migrate:import menu_common

echo "-- Importo i blocchi ---------------------------------------------------"
composer require municipes/theca:0.95 --no-cache
drush -y pm:install theca

drush migrate:import paragraph_common
drush migrate:import block_common

echo "-- Scarico il tipo di contenuto Appuntamento ---------------------------"
composer require municipes/constitutum:0.95 --no-cache

echo "-- Scarico il tipo di contenuto Documento privato ----------------------"
composer require municipes/privatum_documentum:0.95 --no-cache

echo "-- Scarico il tipo di contenuto Messaggio ------------------------------"
composer require municipes/nuntium:0.95 --no-cache

echo "-- Scarico il tipo di contenuto Pagamento ------------------------------"
composer require municipes/pensio:0.95 --no-cache

echo "-- Scarico il tipo di contenuto Pratica --------------------------------"
composer require municipes/libellus:0.95 --no-cache
