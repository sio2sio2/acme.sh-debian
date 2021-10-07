
# Renew all certificates obtained by root and located in /etc/acme.sh 
0 15 * * * /usr/bin/acme.sh --cron --home "/etc/acme.sh/" > /dev/null

