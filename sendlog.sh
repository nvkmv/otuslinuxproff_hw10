#!/bin/bash

leftdate=$(date --date='1 hour ago')
currentdate=$(date)

access=$(sudo awk '{ print $1, $7 }' /var/log/nginx/access.log | sudo sort -uk1)
error=$(sudo awk '{print $2, $16, $7 }' /var/log/nginx/error.log)
echo -e "report from $leftdate to $currentdate\nпереходы:\n$access\nошибки:\n$error " | mail -s "sendlog" mishanovak@ya.ru
