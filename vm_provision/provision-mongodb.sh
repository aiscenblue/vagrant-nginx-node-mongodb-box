#download mongodb
if [ ! -f /usr/bin/mongo ]; then
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
fi
