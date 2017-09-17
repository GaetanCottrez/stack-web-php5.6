#!/bin/bash
source /etc/apache2/envvars
tail -f /var/log/apache2/error.log &
exec apache2 -D FOREGROUND