# Consilĭum
![GitHub](https://img.shields.io/github/license/municipes/consilium?style=for-the-badge)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/municipes/consilium?sort=semver&style=for-the-badge)
![Packagist Dependency Version](https://img.shields.io/packagist/dependency-v/municipes/consilium/drupal/recommended-project?style=for-the-badge)
![Packagist Downloads](https://img.shields.io/packagist/dt/municipes/consilium?style=for-the-badge)

[Consilĭum] è un modello che installa la distribuzione Drupal Municipes

## Installazione
Per installare il CMS Municipes versione 9.5 procedi così
1) Installa il codice:
```shell
$ composer create municipes/consilium:9.5 project-name --no-install
$ cd project-name
$ composer require drush/drush --no-install
$ composer install
```
2) Configura Drupal eseguendo [setup_step02](scripts/setup_step02__configure_drupal.sh)
3) Configura Municipes eseguendo [setup_step03](scripts/setup_step03__configure_municipes.sh)

Se usi ddev puoi installare tutto con un unico comando, esegui [ddev_installer](scripts/municipes_ddev_installer.sh)
```shell
bash <(curl -s -H "Cache-Control: no-cache" "https://raw.githubusercontent.com/municipes/consilium/9.5/scripts/municipes_ddev_installer.sh")
```

## License

Copyright (C) 2023 https://github.com/municipes

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License version 3 as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

Questo è un software libero: puoi ridistribuirlo e/o modificarlo secondo i termini della GNU General Public License versione 3 pubblicata dalla Free Software Foundation.

Questo programma è distribuito nella speranza che possa essere utile, ma SENZA ALCUNA GARANZIA; senza nemmeno la garanzia implicita di COMMERCIABILITÀ o IDONEITÀ PER UNO SCOPO PARTICOLARE. Vedere la GNU General Public License per maggiori dettagli.
