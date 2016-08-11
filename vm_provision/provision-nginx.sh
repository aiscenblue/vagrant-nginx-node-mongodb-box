# Intended for Ubuntu 14.04 (Trusty)

# Update Nginx
sudo apt-get update

# Nginx
echo "----- Provision: Installing nginx..."
sudo apt-get install -y nginx

echo "----- Provision: Setup /var/www to point to /vagrant ..."
rm -rf /var/www
ln -fs /vagrant/www /var/

echo "----- Provision: replace default configuration to default file"
rm -rf /etc/nginx/sites-available
ln -fs /vagrant/sites-available /etc/nginx/

#Enable the above site you have to create a symlink to it in the directory /etc/nginx/sites-enabled/
sudo ln -s /etc/nginx/sites-available/ /etc/nginx/sites-enabled/

