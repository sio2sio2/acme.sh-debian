
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Renew all certificates obtained by root and located in /etc/acme.sh 
0 15 * * *   root  /usr/bin/acme.sh --cron --home "/etc/acme.sh/" > /dev/null

