echo "This script installs nginx 1.18.0 as a service."

echo "Downloading the necessary contents."
./download_dependencies.sh

echo "Installing dependency packages."
./install_dependencies.sh

echo "Configuring & installing Nginx parameters."
./configure_and_install_nginx.sh

echo "Setting up nginx as a systemd service."
./setup_nginx_service.sh

echo "Configuring Nginx man page."
./configure_nginx_man.sh
