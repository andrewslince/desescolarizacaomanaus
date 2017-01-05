#!/bin/bash

# set -e

echo ""
echo "#"
echo "# DATABASE IMPORT"
echo "#"
echo ""

# load main cli configurations
source ./scripts/main.cfg

# load database configurations
source scripts/database/db.cfg

echo ">>> extracting compressed file..."
cd $DB_DUMP_PATH
    tar xf $DB_DUMP_FILE_COMPRESSED
cd $APPLICATION_PATH
echo ""

# use wp-cli to create the database
echo ">>> creating the database..."
wp db create
echo ""

# use wp-cli to import the database
echo ">>> importing dump to database..."
wp db import $DB_TARGET_UNCOMPRESSED_FILE
echo ""

echo ">>> removing uncompressed dump file..."
rm $DB_TARGET_UNCOMPRESSED_FILE
echo ""

echo ">>> finished !"
echo ""
