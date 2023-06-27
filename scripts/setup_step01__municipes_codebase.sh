#!/usr/bin/env bash

# This script install Municipes codebase.
# You can use this script to build your own images as well.

# composer create municipes/consilium:^10.x-dev --no-install --no-cache

composer require drush/drush --no-install
composer install
