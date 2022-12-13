
What Choices have been made and why?
====================================

* We chose to make an alias for root as "acme.sh=acme.sh --home /etc/acme.sh" instead of using environment variables to set the home dir.
  * Because this allow 'root' to use another homedir by specifying it via an env var or in a script, or use acme.sh "raw" by using \acme.sh. 

* We placed acme.sh in /usr/bin and not in /usr/sbin
  * Any other non-root user can still use acme.sh as long as it can access the webroot or the dns api endpoints. /usr/bin is therefore the place to be
  
* We added an symlink from /usr/bin/ to /usr/lib/acme.sh/acme.sh and not the shell script directly in /usr/bin
  * Because acme.sh has plugins in deploy/ dnsapi/ and notify/ subfolders, its more stable to regroup all those in the same folder.
  
* We named that package acme-sh and not acme.sh
  * Because Debian packages should not have a "." in their name, because this has unexpected side effects such as /etc/cron.d/acme.sh not being interpreted!
  
* We chose to setup a /var/log/acme.sh log folder and not use syslog
  * Because Syslog may be using TLS/SSL certificate and in some case, may be broken due to the lack of ... available TLS certificate :) being able to launch acme.sh and still log in that case seems pretty important.
  
