# Intended for Ubuntu 14.04 (Trusty)

# Update Ubuntu
sudo apt-get update

# Nginx
echo "----- Provision: Installing nginx..."
sudo apt-get install -y nginx

echo "----- Provision: Setup /var/www to point to /vagrant ..."
rm -rf /var/www
ln -fs /vagrant/www /var/

#install nodejs v6.x
echo "----- Provision: Installing nodejs v6.x ..."
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y npm

npm install npm -g


#download mongodb
echo "----- Provision: download mongodb ... "
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

#Create a /etc/apt/sources.list.d/mongodb-org-3.2.list file for MongoDB.
echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#Reload local package database.
echo "----- Provision: reload local package database ..."
sudo apt-get update

#Install the MongoDB packages.
echo "----- Provision: Install mongoDB packages with default permission to yes"
sudo apt-get install -y mongodb-org

#Run MongoDB Community Edition
echo "----- Provision: starting mongo service"
sudo service mongod start

echo "----- Provision: Restarting nginx service"
sudo service nginx start
