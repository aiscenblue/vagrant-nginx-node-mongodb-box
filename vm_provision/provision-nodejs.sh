#install nodejs v6.x
echo "----- Provision: Installing nodejs v6.x ..."
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y npm

#install npm
echo "----- Provision: Installing npm ..."
npm install npm -g

