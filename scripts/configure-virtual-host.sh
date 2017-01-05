#!/bin/bash

set -e

echo ""
echo "#"
echo "# VIRTUAL HOST CONFIGURATION"
echo "#"
echo ""

# load main cli configurations
source ./scripts/main.cfg

LOCAL_SERVER_NAME="local.desescolarizacaomanaus.com.br"

# checks if server name not exists in the local dns (/etc/hosts)
if ! grep -q $LOCAL_SERVER_NAME "/etc/hosts"
then
    echo ">>> adding entry to '$LOCAL_SERVER_NAME' in /etc/hosts..."
    sudo sh -c "echo 127.0.0.1 $LOCAL_SERVER_NAME >> /etc/hosts"
    echo ""
fi

# create virtual host
echo ">>> creating virtual host file..."
sudo echo '<VirtualHost *:80>
    ServerName  '$LOCAL_SERVER_NAME'
    DocumentRoot '$APPLICATION_PATH'

    <Directory '$APPLICATION_PATH'>
        IndexOptions Charset=UTF-8
        AddDefaultCharset utf-8
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Order allow,deny
        allow from all
        Require all granted
    </Directory>

    LogLevel warn
    ErrorLog ${APACHE_LOG_DIR}/error-'$LOCAL_SERVER_NAME'.log
    CustomLog ${APACHE_LOG_DIR}/access-'$LOCAL_SERVER_NAME'.log combined
</VirtualHost>' > $LOCAL_SERVER_NAME.conf
sudo mv $LOCAL_SERVER_NAME.conf /etc/apache2/sites-enabled/
echo ""

# apache restart
echo ">>> restarting apache..."
sudo service apache2 restart
echo ""

echo ">>> finished !"
echo ""

echo ">>> access http://$LOCAL_SERVER_NAME in your browser !"
echo ""
