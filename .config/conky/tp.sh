#!/bin/sh

active=`systemctl status transparent-proxy.service | grep active | wc -l`
if [[ $active == 1 ]]
then 
    echo "\${color green}ON\${color}"
else 
    echo "\${color red}OFF\${color}"
fi
