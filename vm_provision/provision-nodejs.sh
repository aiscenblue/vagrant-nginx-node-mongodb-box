#install nodejs v6.x
if [ ! -f /usr/bin/node ]; then
	echo "----- Provision: Installing nodejs v6.x ..."
	curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
	sudo apt-get install -y nodejs
	sudo apt-get install -y npm
fi

if [ ! -f /usr/bin/npm ]; then
	#install npm
	echo "----- Provision: Installing npm ..."
	npm install npm -g
fi
