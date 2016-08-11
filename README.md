vagrant build for node,mongo,sailsjs environment

`to add another port just declare another instance in vagrant file`

*config.vm.network "forwarded_port", guest: 80, host: 8080*

`run: sudo vagrant up --provision`

`pause: sudo vagrant halt`

`stop: sudo vagrant suspend`

`restart: sudo vagrant reload --provision`

*run at: http://localhost:8080/*
