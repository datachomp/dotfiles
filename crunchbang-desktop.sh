sudo apt-get install -y python-software-properties software-properties-common curl

sudo apt-get update

#db
echo "deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main" > ~/pgdg.list
sudo mv ~/pgdg.list /etc/apt/sources.list.d/pgdg.list
sudo wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -

#node
echo "deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu lucid main" > ~/chris-lea-node_js-wheezy.list
sudo mv ~/chris-lea-node_js-wheezy.list /etc/apt/sources.list.d/chris-lea-node_js-wheezy.list
sudo apt-get update

#sublimetext
sudo echo "webupd8team-sublime-text-2-wheezy.list" > /etc/apt/sources.list.d/webupd8team-sublime-text-2-wheezy.list

sudo apt-get install -y postgresql-9.2 pgadmin3 libpq-dev postgresql-client

sudo apt-get install -y nodejs
sudo apt-get install -y p7zip-full

sudo apt-get install -y sublime-text


#ruby
\curl -L https://get.rvm.io | bash -s stable --autolibs=3
source ~/.bash_profile
rvm install 2.0.0-p247
rvm --default use 2.0.0-p247
