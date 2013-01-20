#!/bin/bash
echo "Get the basics"
apt-get -y update 
apt-get -y install curl git-core python-software-properties 

echo "Add PPAs"
add-apt-repository -y ppa:texworks
add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
add-apt-repository -y ppa:apt-fast/stable
add-apt-repository -y ppa:tualatrix/ppa
add-apt-repository -y ppa:nginx/stable 
add-apt-repository -y ppa:pitti/postgresql 
add-apt-repository -y ppa:chris-lea/node.js
add-apt-repository -y ppa:chris-lea/redis-server
add-apt-repository -y ppa:webupd8team/sublime-text-2
add-apt-repository -y ppa:nvbn-rm/ppa
add-apt-repository -y ppa:conscioususer/polly-daily
apt-add-repository -y ppa:yorba/ppa
add-apt-repository -y ppa:indicator-multiload/stable-daily
add-apt-repository -y ppa:cooperjona/lightread
add-apt-repository -y ppa:juanje/freemind


echo "Updating Repos"
apt-get update

echo "Installing packages"

apt-get install -y apt-fast preload ubuntu-tweak everpad polly
apt-get -y install nginx postgresql-9.2 libpq-dev nodejs sublime-text
apt-get install -y redis-server

apt-get install -y vlc vlc-plugin-pulse mozilla-plugin-vlc
apt-get install -y filezilla gdebi
apt-get install -y shotwell
apt-get install -y indicator-multiload
apt-get install -y lightread freemind

echo "make sure  mysql is toast"
update-rc.d mysql remove
update-rc.d apache2 remove

echo "rvm time"
apt-get -y install git-core curl build-essential zlib1g-dev libreadline-dev libssl-dev libxml2-dev git-gui git-doc
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
apt-get -y install openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion


echo "clean up"
apt-get auto clean

echo "horray!"
exit 0

#Items to be added
#facebook 
#filezilla
#chrome

#openshot

#stormcloud 