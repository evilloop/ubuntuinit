apt update
apt -y install python3.7 python3.7-dev
apt -y install nginx
apt -y install redis
apt -y install postgis
apt -y install python3.7-venv
apt -y install python-setuptools
apt -y install git
apt -y install screen
apt -y install virtualenv
apt -y install supervisor
apt-get remove docker docker-engine docker.io containerd runc docker-ce docker-ce-cli containerd.io
apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get -y install docker-ce docker-ce-cli containerd.io
 
mkdir -p /data/etc
mkdir /home/www
mkdir /home/www/datas
mkdir /home/www/logs
mkdir /home/www/websites
useradd -d /home/www www
chown -R www.www /home/www
chmod -R 700 /home/www
 
ln -s /etc/nginx /data/etc/nginx-conf
ln -s /etc/supervisor /data/etc/supervisor
mkdir /data/etc/uwsgi
