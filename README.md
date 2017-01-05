# **Desescolarização Manaus**

> Comunidade de Livre Prendizagem e Desescolarização

## Requirements

* [WP-CLI](http://wp-cli.org/)
* All scripts must been executed in root folder from project

## Setup application completely

After download this project, run the setup script to configurate the application:

```sh
$ ./scripts/setup-app.sh
```

The command above:

* creates and load the database;
* creates a local virtual host to server name http://local.lojanerdbaby.com.

## Database operations

### Exporting (backup)

```sh
$ ./scripts/database/export.sh
```

The database dump be saved in `resources/latest_database_dump.tar.gz`.

### Importing

```sh
$ ./scripts/database/import.sh
```

## File permissions secure

```sh
$ ./scripts/file-permissions-secure.sh
```

This script applies the correct permissions (safe mode) in all folders and files from project.
