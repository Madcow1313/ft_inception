#!/bin/bash

cd wordpress

#s-substitute, g-global(change all occurencies)?
sed -i "s/username_here/$MYSQL_USER/g" wp-config-sample.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config-sample.php
sed -i "s/localhost/$MYSQL_HOSTNAME/g" wp-config-sample.php
sed -i "s/database_name_here/$MYSQL_DATABASE/g" wp-config-sample.php

#rename config
mv wp-config-sample.php wp-config.php

cd ../