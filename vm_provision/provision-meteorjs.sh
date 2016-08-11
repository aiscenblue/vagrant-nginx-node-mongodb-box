#install meteorjs

if [ ! -f /usr/bin/sailsjs ]; then
	echo "----- Provision: Installing meteorjs "
	curl https://install.meteor.com/ | sh
fi
