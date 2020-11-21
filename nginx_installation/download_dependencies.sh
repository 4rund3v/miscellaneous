echo "Downloading dependencies !!"
mkdir -p dependencies && cd ./dependencies
wget https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.gz && tar -xzf pcre-8.44.tar.gz
wget https://www.zlib.net/zlib-1.2.11.tar.gz && tar -xzf zlib-1.2.11.tar.gz
wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz && tar -xzf openssl-1.1.1g.tar.gz
find -type f -iname "*.tar.gz" -delete
cd ../

echo "Downloading modules to be supported(upload, upload-progress & vod) !!"
mkdir -p modules && cd ./modules
wget https://github.com/vkholodkov/nginx-upload-module/archive/master.zip && unzip master.zip && rm ./master.zip 
wget https://github.com/masterzen/nginx-upload-progress-module/archive/master.zip && unzip master.zip && rm ./master.zip
wget https://github.com/kaltura/nginx-vod-module/archive/master.zip && unzip master.zip && rm ./master.zip
cd ../

echo "Downloading the nginx source (1.18.0) !!"
mkdir -p source && cd ./source
wget http://nginx.org/download/nginx-1.18.0.tar.gz && tar xzvf nginx-1.18.0.tar.gz
find -type f -iname "*.tar.gz" -delete
cd ../
