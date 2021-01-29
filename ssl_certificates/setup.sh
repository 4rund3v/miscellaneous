sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-nginx

printf("sudo nano /etc/nginx/sites-available/default" )
printf("Replace the server_name _ with the name of the server ")
printf("sudo nginx -t")
printf("sudo nginx -s reload")


printf("alow nginx via ufw")
printf("sudo ufw allow 'Nginx Full'")
printf("get the ceritificate")
printf("sudo certbot --nginx -d example.com -d www.example.com")

