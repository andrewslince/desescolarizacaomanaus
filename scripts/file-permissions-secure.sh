#!/bin/bash

set -e

echo ""
echo "#"
echo "# FILE AND FOLDERS PERMISSIONS CONFIGURATION"
echo "#"
echo ""

APPLICATION_PATH=$(readlink -f .)

echo ">>> applying correct permissions in project folders..."
sudo find . -type d -exec chmod 755 {} \;
echo ""

echo ">>> applying correct permissions in project files (all)..."
sudo find . -type f -exec chmod 644 {} \;
echo ""

echo ">>> applying correct permissions in '.htaccess' file..."
chmod 444 .htaccess
echo ""

echo ">>> applying correct permissions in 'wp-config.php' file..."
chmod 444 wp-config.php
echo ""

echo ">>> applying correct permissions in custom scripts..."
chmod +x scripts -Rf
echo ""

echo ">>> finished !"
echo ""
