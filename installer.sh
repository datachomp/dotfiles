#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# git
ln -s ${BASEDIR}/.gitconfig ~/
ln -s ${BASEDIR}/.gitignore ~/

# ruby
ln -s ${BASEDIR}/.gemrc ~/
ln -s ${BASEDIR}/.irbrc ~/
ls -s ${BASEDIR}/.railsrc ~/
ls -s ${BASEDIR}/.ruby-settings ~/

#web pullers
ln -s ${BASEDIR}/.curlrc ~/
ln -s ${BASEDIR}/.wgetrc ~/

#bashy
ln -s ${BASEDIR}/.aliases ~/
ln -s ${BASEDIR}/.bash_profile ~/
ln -s ${BASEDIR}/.bashrc ~/
ln -s ${BASEDIR}/.bash_colors ~/

#postgres
ln -s ${BASEDIR}/.psqlrc ~/

ln -s ${BASEDIR}/.tmux.conf ~/
ln -s ${BASEDIR}/.vimrc ~/

#hostfile
ln -s ${BASEDIR}/host_file_update.sh ~/





# easier install?
curl -o .curlrc https://raw.githubusercontent.com/datachomp/dotfiles/master/.curlrc
curl -o .gemrc https://raw.githubusercontent.com/datachomp/dotfiles/master/.gemrc
curl -o .gitconfig https://raw.githubusercontent.com/datachomp/dotfiles/master/.gitconfig
curl -o .gitignore https://raw.githubusercontent.com/datachomp/dotfiles/master/.gitignore
curl -o .irbrc https://raw.githubusercontent.com/datachomp/dotfiles/master/.irbrc
curl -o .psqlrc https://raw.githubusercontent.com/datachomp/dotfiles/master/.psqlrc
curl -o .railsrc https://raw.githubusercontent.com/datachomp/dotfiles/master/.railsrc
curl -o .ruby-settings https://raw.githubusercontent.com/datachomp/dotfiles/master/.ruby-settings

curl -o .wgetrc https://raw.githubusercontent.com/datachomp/dotfiles/master/.wgetrc
curl -o .curlrc https://raw.githubusercontent.com/datachomp/dotfiles/master/.curlrc
curl -o .aliases https://raw.githubusercontent.com/datachomp/dotfiles/master/.aliases

curl -o host_file_update.sh https://raw.githubusercontent.com/datachomp/dotfiles/master/host_file_update.sh



