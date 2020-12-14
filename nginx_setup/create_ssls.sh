
EMAILID="arundev@potatocodes.in"
IP="192.168.1.41"
PASSWORD="arun"

SSL_KEY_PATH="/etc/ssl/private/nginx-selfsigned.key"
SSL_CERT_PATH="/etc/ssl/certs/nginx-selfsigned.crt"

openssl req -x509 -nodes -days 7007 -newkey rsa:2048 -keyout $SSL_KEY_PATH -out $SSL_CERT_PATH -passin pass:$PASSWORD -subj "/C=IN/ST=Karnataka/L=Bengaluru/O=PotatoCodes/OU=Blog/CN=$IP/emailAddress=$EMAILID"
