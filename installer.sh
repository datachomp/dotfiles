#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# git
ln -s ${BASEDIR}/.git ~/
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
