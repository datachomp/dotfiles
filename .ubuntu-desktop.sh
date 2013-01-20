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
add-apt-repository -y ppa:yorba/ppa
add-apt-repository -y ppa:indicator-multiload/stable-daily
add-apt-repository -y ppa:cooperjona/lightread
add-apt-repository -y ppa:juanje/freemind
#pgadmin 1.16
apt-add-repository -y ppa:voronov84/andreyv

echo "Updating Repos"
apt-get update

echo "Installing packages"

apt-get install -y apt-fast 
apt-fast install -y preload ubuntu-tweak everpad polly
apt-fast -y install nginx postgresql-9.2 libpq-dev pgadmin3 nodejs sublime-text
apt-fast install -y redis-server
apt-fast install -y mono-complete monodevelop

apt-fast install -y vlc vlc-plugin-pulse mozilla-plugin-vlc
apt-fast install -y filezilla gdebi
apt-fast install -y shotwell
apt-fast install -y indicator-multiload
apt-fast install -y lightread freemind meld conky pidgin

echo "make sure  mysql is toast"
update-rc.d mysql remove
update-rc.d apache2 remove

echo "rvm time"
apt-fast install -y git-core curl build-essential zlib1g-dev libreadline-dev libssl-dev libxml2-dev git-gui git-doc
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
apt-fast install -y openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion


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