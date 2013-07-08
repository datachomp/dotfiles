sudo apt-get install -y python-software-properties software-properties-common curl

sudo apt-get update

#db
sudo echo "deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main" > /etc/apt/sources.list.d/pgdg.list
sudo wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-9.2 postgresql-9.2-common pgadmin3

#node
sudo echo "deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu lucid main" > /etc/apt/sources.list.d/chris-lea-node_js-wheezy.list
sudo apt-get update


sudo apt-get install -y nodejs
sudo apt-get install -y libpq-dev postgresql-client 
sudo apt-get install -y p7zip-full

sudo echo "webupd8team-sublime-text-2-wheezy.list" > /etc/apt/sources.list.d/webupd8team-sublime-text-2-wheezy.list
sudo apt-get update
sudo apt-get install -y sublime-text


#ruby
\curl -L https://get.rvm.io | bash -s stable --autolibs=3
source ~/.bash_profile
rvm install 2.0.0-p247
rvm --default use 2.0.0-p247
