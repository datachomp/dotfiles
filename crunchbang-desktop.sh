sudo apt-get install -y python-software-properties software-properties-common curl

sudo apt-get update

sudo nano /etc/apt/sources.list.d/pgdg.list
sudo add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main"

sudo wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-9.2 postgres-9.2-common pgadmin3

#https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager
sudo apt-get install python g++ make checkinstall
mkdir ~/src && cd $_
wget -N http://nodejs.org/dist/node-latest.tar.gz
tar xzvf node-latest.tar.gz && cd node-v*
./configure
checkinstall #(remove the "v" in front of the version number in the dialog)
sudo dpkg -i node_*


sudo apt-get install -y nodejs
sudo apt-get install -y libpq-dev postgresql-client 
sudo apt-get install -y p7zip-full

sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text

\curl -L https://get.rvm.io | bash -s stable --autolibs=3
source ~/.bash_profile
rvm install 2.0.0-p247
rvm --default use 2.0.0-p247
