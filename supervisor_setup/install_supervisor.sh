echo "Installing the pip package"
sudo apt install python3-pip

echo "Installing the supervisor pypi package"
sudo pip3 install supervisor

echo "Configuring the supervisor"
sudo cp -v ./supervisord.conf /etc/supervisord.conf
sudo mkdir -p /etc/supervisor.d

echo "Starting the supervisord service on startup"
sudo cp -v ./supervisord.service /lib/systemd/system/supervisord.service
sudo systemctl daemon-reload
sudo systemctl enable supervisord.service
sudo systemctl start supervisord.service
