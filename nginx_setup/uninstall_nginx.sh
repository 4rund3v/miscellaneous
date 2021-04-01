# Stop the service first:
sudo service nginx stop
sudo apt-get remove nginx nginx-common
sudo apt-get autoremove
# Our compiled-from-source files:
sudo rm -rf /etc/nginx /etc/default/nginx /usr/sbin/nginx* /usr/local/nginx /var/run/nginx.pid /var/log/nginx
# The Debian scripts that came with the apt-get version:
sudo rm -rf /etc/init.d/nginx /etc/logrotate.d/nginx /var/lib/update-rc.d/nginx
sudo rm -f -R /usr/local/nginx && rm -f /usr/local/sbin/nginx
