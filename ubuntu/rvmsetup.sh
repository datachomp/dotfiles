#this script adapted from:
#http://isotope11.com/blog/quickly-get-a-fresh-ubuntu-install-ready-for-ruby-dev

#to call this:
#curl -#L https://goo.gl/7bcjb | bash



# Make sure you do this from time to time:
sudo apt-get update && sudo apt-get upgrade -y

# Here are the actual packages (feel free to contribute):
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev nodejs libssl-dev libreadline6-dev libreadline-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev ncurses-term automake libtool bison subversion libcurl4-openssl-dev mysql-client mysql-server postgresql postgresql-contrib imagemagick libmagickwand-dev apache2-mpm-prefork apache2-prefork-dev libapr1-dev libaprutil1-dev redis-server vim -y

# Make default editor vim :)
echo "export EDITOR=vim" >> ~/.bashrc

# Install RVM
\curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled

# Source rvm
source ~/.rvm/scripts/rvm

# Source .bashrc
source ~/.bashrc

# Reload RVM
rvm reload
