#!/bin/bash

set -e

echo ""
echo "#"
echo "# DATABASE EXPORT"
echo "#"
echo ""

# printf "database name: "
# read DB_NAME

# printf "database user: "
# read DB_USER

# printf "database password: "
# read -s DB_PASSWORD
# echo ""

# load main cli configurations
source ./scripts/main.cfg

# load configurations
source scripts/database/db.cfg

echo ""
echo ">>> creating the target path (if not exists)..."
mkdir -p $DB_DUMP_PATH
echo ""

# export database to sql file
# echo ">>> exporting dump from database..."
# mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME --compatible=mysql40 --skip-quote-names --skip-add-locks --skip-add-drop-table --ignore-table=$DB_NAME.lnb_itsec_temp --ignore-table=$DB_NAME.lnb_itsec_lockouts --ignore-table=$DB_NAME.lnb_itsec_log --skip-comments | sed 's/ AUTO_INCREMENT=[0-9]*\b//' | sed 's/ TYPE=InnoDB//' > $DB_DUMP_PATH/$DB_DUMP_FILE
# echo ""

cd $DB_DUMP_PATH

    # export database to sql file
    echo ">>> exporting dump from database..."
    wp db export $DB_DUMP_FILE
    echo ""

    # compress sql file to tar.gz file
    echo ">>> compressing dump file..."
    tar -zcf $DB_DUMP_FILE_COMPRESSED $DB_DUMP_FILE
    echo ""

    # remove sql file
    echo ">>> removing uncompressed dump file..."
    rm $DB_DUMP_FILE
    echo ""

echo ">>> finished !"
echo ""
