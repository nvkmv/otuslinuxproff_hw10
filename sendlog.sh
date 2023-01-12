#!/bin/bash
leftdate=$(date --date='1 hour ago')
currentdate=$(date)

parse=$(sudo awk '{print "- " $1 ","}' /var/log/nginx/access.log | sort | uniq -c | sort -nr)

echo ""$parse | sed 's/,/\n/g' > mail

for var in $(sudo awk '{print $7}' /var/log/nginx/access.log)
do echo "count" $var
done | sort | uniq -c | sort -nr >> mail

echo "report from $leftdate to $currentdate" | mail -s "nginx_log" -q mail mishanovak@ya.ru  
