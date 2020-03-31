#!/bin/bash
echo "Get the basics"

mkdir -p ~/projects

sudo apt-add-repository -y ppa:me-davidsansome/clementine
sudo add-apt-repository -y ppa:yorba/ppa
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y ppa:ys/emojione-picker
sudo add-apt-repository -y ppa:stebbins/handbrake-releases
sudo add-apt-repository -y ppa:ubuntu-sdk-team/ppa

# postgres time!
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-12 postgresql-contrib-12 postgresql-client-12 pgbouncer pgadmin3 libpq-dev

# utilities
sudo apt-get install -y htop openssh-server
sudo apt-get install -y vlc smplayer clementine bleachbit
sudo apt-get install -y p7zip p7zip-full p7zip-rar unity-tweak-tool gparted dkms
sudo apt-get install -y git curl
sudo apt-get install -y ubuntu-wallpapers* ntp ntpdate

# codecs
sudo apt-get install -y handbrake handbrake-cli
sudo apt-get install -y libxine1-ffmpeg mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview libmpeg3-1 mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4 libswscale-extra-2 ubuntu-restricted-extras


# social
echo "install corebird from ubuntu store"
sudo apt-get install -y emojione-picker

# email
sudo apt-get install -y geary

# devtools
sudo apt-get install -y neovim sublime-text-installer

# languages
sudo apt-get install -y golang-go ubuntu-sdk

echo "install ruby"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.7.0
rvm --default use 2.7.0


echo "clean up"
sudo apt-get autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean

echo "horray!"
exit 0



#### rss
# http://www.omgubuntu.co.uk/2015/08/newsup-new-reader-app-for-linux-desktop
# feedbin setup

#### media
# http://www.omgubuntu.co.uk/2016/02/openshot-2-0-ppa-beta  # video editing
# http://www.omgubuntu.co.uk/2016/03/gnome-photos-3-20-instagram-filters-editing-tools



#### writing
# http://www.omgubuntu.co.uk/2016/02/fromscratch-new-ubuntu-note-taking-app
# http://www.omgubuntu.co.uk/2016/02/abricotine-desktop-markdown-editor-for-linux
# http://www.omgubuntu.co.uk/2016/03/get-notes-simple-note-taking-app-linux
