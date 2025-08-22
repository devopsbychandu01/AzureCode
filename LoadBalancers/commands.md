apt update
apt-get install apache2 -y
systemctl status apache2
systemctl start apache2
## vm1
vi /var/www/html/index.html
# 1000dd
# type i
# insert application1
# esc, :wq!

## vm2
apt update
apt-get install apache2 -y
systemctl status apache2
systemctl start apache2
## vm:2
vi /var/www/html/index.html
# 1000dd
# type i
# insert application2
# esc, :wq!
