echo "Linking the nginx modules to /etc/nginx"
sudo ln -s /usr/lib/nginx/modules /etc/nginx/modules
echo "Checking the nginx version"
sudo nginx -V
echo "Creating the nginx user."
sudo adduser --system --home /nonexistent --shell /bin/false --no-create-home --disabled-login --disabled-password --gecos "nginx user" --group nginx
# Check that user and group are created
sudo tail -n 1 /etc/passwd /etc/group /etc/shadow
echo "Nginx test and report if errors"
sudo nginx -t
# Will throw this error -> nginx: [emerg] mkdir() "/var/cache/nginx/client_temp" failed (2: No such file or directory)

# Create NGINX cache directories and set proper permissions
sudo mkdir -p /var/cache/nginx/{client_temp,fastcgi_temp,proxy_temp,scgi_temp,uwsgi_temp}
sudo chmod 700 /var/cache/nginx/*
sudo chown nginx:root /var/cache/nginx/*
# copying the default nginx conf prepared
sudo cp -v ./nginx.conf /etc/nginx/nginx.conf
# Re-check syntax and potential errors. 
sudo nginx -t
echo "Creating the nginx service."
sudo cp -v ./nginx.service /etc/systemd/system/nginx.service
echo "Enabling the nginx as a service."
sudo systemctl enable nginx.service
sudo systemctl start nginx.service
echo "Creating the default directories."
sudo mkdir -p /etc/nginx/{conf.d,snippets,sites-available,sites-enabled}
echo "Creating th nginx log files."
sudo chmod 640 /var/log/nginx/*
sudo touch /var/log/nginx/access.log /var/log/nginx/error.log
echo "Changing the access and error log."
sudo chown nginx:root /var/log/nginx/access.log /var/log/nginx/error.log
echo "Copying the log rotate files"
sudo cp ./nginx.logrotate  /etc/logrotate.d/nginx
sudo nginx -s reload
