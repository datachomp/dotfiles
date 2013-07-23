#!/bin/bash
echo "Get the basics"
# apt-get -y update   # Is this overkill at this step?
# This lets us just add ppas
apt-get -y install python-software-properties
apt-get -y install software-properties-common

#hurry and load apt-fast
add-apt-repository -y ppa:apt-fast/stable
apt-get update
apt-get install -y apt-fast 

echo "Add PPAs"
add-apt-repository -y ppa:texworks
add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable

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

#pgadmin 1.16
apt-add-repository -y ppa:voronov84/andreyv

echo "Updating Repos"
apt-get update

echo "Installing packages"
#system tweaks
apt-fast install -y preload ubuntu-tweak indicator-multiload conky gdebi

#Dev Tools
apt-fast install -y nginx postgresql-9.2 postgresql-contrib libpq-dev pgadmin3 nodejs sublime-text
apt-fast install -y redis-server
#apt-fast install -y mono-complete monodevelop meld
apt-fast install -y meld

#media
apt-fast install -y vlc vlc-plugin-pulse mozilla-plugin-vlc
apt-fast install -y openshot #video editor

#misc
apt-fast install -y filezilla everpad polly
apt-fast install -y shotwell curl nautilus-open-terminal
apt-fast install -y lightread pidgin
apt-fast install -y chromium-browser
apf-fast install -y p7zip-rar p7zip-full

#testing
#sudo add-apt-repository ppa:atareao/atareao
#sudo apt-get install my-weather-indicator


echo "make sure mysql is toast"
update-rc.d mysql remove
update-rc.d apache2 remove

echo "rvm time"
apt-fast install -y git-core curl build-essential zlib1g-dev libreadline-dev libssl-dev libxml2-dev git-gui git-doc
#bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
curl -L https://get.rvm.io | bash -s stable --ruby
apt-fast install -y openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
echo 'export PATH=$HOME/.rvm/bin:$PATH' >> ~/.bashrc

#this lens is just way too slow
apt-get remove unity-lens-shopping

#show all startup apps in startup applications
sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop

#normal scrolling
gsettings set com.canonical.desktop.interface scrollbar-mode normal

# move the x - []  icons to the right side
gconftool-2 --set /apps/metacity/general/button_layout --type string menu:minimize,maximize,close



echo "clean up"
apt-get autoclean

echo "horray!"
exit 0

#Items to be added
#facebook

#stormcloud   -- I think this is just stuck in the Ubuntu Store
