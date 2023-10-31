vm-1: 

## Install the package###
apt-get update
apt-get install apache2 -y
mkdir /var/www/html/app1 && mv /var/www/html/index.html /var/www/html/app1/index.html

### update the content  ###
--> update html file
vi /var/www/html/app1/index.html


### creating the certificates ###
openssl genrsa -des3 -out app1.key 2048
openssl req -new -key app1.key -out app1.csr
cp app1.key app1.key.org
openssl rsa -in app1.key.org -out app1.key
rm -f app1.key.org
openssl x509 -req -days 365 -in app1.csr -signkey app1.key -out app1.crt
openssl pkcs12 -export -out app1.pfx -inkey app1.key -in app1.crt
chmod 777 *
openssl x509 -inform PEM -in app1.crt -outform DER -out app1.cer

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

