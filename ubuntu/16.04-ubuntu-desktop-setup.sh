#!/bin/bash
echo "Get the basics"
# apt-get -y update   # Is this overkill at this step?
# This lets us just add ppas
sudo apt-get -y install software-properties-common python-software-properties

echo "Add PPAs"


echo "Updating Repos"
sudo apt-get update

echo "Installing packages"
# system tweaks


# Dev Tools
# postgres
bash <(curl -s https://raw.github.com/pgexperts/add-pgdg-apt-repo/master/add-pgdg-apt-repo.sh)

sudo apt install -y libpq-dev postgresql-9.6 postgresql-contrib-9.6 pgadmin3 libpq-dev postgresql-client-9.6

#media

#misc
sudo apt install -y chromium-browser

sudo apt install -y gufw #firewall


echo "make sure mysql is toast"
sudo update-rc.d mysql remove
sudo update-rc.d apache2 remove

echo "rvm time"
curl -L https://get.rvm.io | bash -s stable --ruby

echo "install golang"
sudo apt-get remove golang --purge
wget https://storage.googleapis.com/golang/go1.7.5.linux-amd64.tar.gz
sudo tar -zxvf go1.7.*.linux-amd64.tar.gz -C /usr/local
echo -e "\r\n" >> ~/.bashrc
echo 'export GOROOT=/usr/local/go/bin/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.bashrc
echo -e "\r\n" >> ~/.profile
echo 'PATH="$PATH:/usr/local/go/bin/go" >> ~/.profile'

echo "install crystal"
curl http://dist.crystal-lang.org/apt/setup.sh | sudo bash
sudo apt install -y crystal

echo "clean up"
sudo apt autoremove

echo "horray!"
exit 0
