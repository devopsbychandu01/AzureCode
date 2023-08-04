vm-1: 

## Install the package###
apt-get update
apt-get install apache2 -y
mkdir /var/www/html/app1 && mv /var/www/html/index.html /var/www/html/app1/index.html

### update the content  ###
--> update html file
vi /var/www/html/app1/index.html


### creating the certificates ###
openssl genrsa -des3 -out server.key 2048
openssl req -new -key server.key -out server.csr
cp server.key server.key.org
openssl rsa -in server.key.org -out server.key
rm -f server.key.org
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
openssl pkcs12 -export -out server.pfx -inkey server.key -in server.crt
openssl x509 -inform PEM -in server.crt -outform DER -out server.cer

### update the certs into apache2 ###
vi /etc/apache2/sites-available/default-ssl.conf
--> change the key file and cert file paths
a2enmod ssl
a2enmod headers
a2ensite default-ssl
systemctl restart apache2


### conver the cert to pfs for app gateway ###
openssl pkcs12 -export -in server.crt -inkey server.key -out server.pfx
chmod 777 server.pfx
## create cer ###
cp server.crt server.cer

Donwnload the certs, keys, cer, csr and pfx to local to use the same in the second server.


vm-2:

## Install the package###
apt-get update
apt-get install apache2 -y
mkdir /var/www/html/app2 && mv /var/www/html/index.html /var/www/html/app2/index.html

### update the content  ###
--> update html file
vi /var/www/html/app2/index.html

### upload the server1 certificates to this server ###

### update the certs into apache2 ###
vi /etc/apache2/sites-available/default-ssl.conf
--> change the key file and cert file paths
a2enmod ssl
a2enmod headers
a2ensite default-ssl
systemctl restart apache2

