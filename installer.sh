#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

OS=$1
HOSTNAME=$2

if [ $OS == "macos" ]
then
	# git
	ln -s ${BASEDIR}/.gitconfig ~/
	ln -s ${BASEDIR}/.gitignore ~/
	# ruby
	ln -s ${BASEDIR}/.gemrc ~/
	ln -s ${BASEDIR}/.irbrc ~/
	#ls -s ${BASEDIR}/.railsrc ~/
	#ls -s ${BASEDIR}/.ruby-settings ~/
	cp .railsrc ~/
	cp .ruby-settings ~/

	#web pullers
	ln -s ${BASEDIR}/.curlrc ~/
	ln -s ${BASEDIR}/.wgetrc ~/
	#postgres
	ln -s ${BASEDIR}/.psqlrc ~/
	#editors
	ln -s ${BASEDIR}/.sublime_settings ~/
	ln -s ${BASEDIR}/.tmux.conf ~/
	ln -s ${BASEDIR}/.vimrc ~/
	# profile
	ln -s ${BASEDIR}/.aliases ~/
	ln -s ${BASEDIR}/.bashrc ~/
	ln -s ${BASEDIR}/.bash_profile ~/
	
elif [ $OS == "ubuntu" ]
then
	echo "You've got linners"
	# git
	ln -s ${BASEDIR}.gitconfig ~/
	ln -s ${BASEDIR}.gitignore ~/
	# ruby
	ln -s ${BASEDIR}/.gemrc ~/
	ln -s ${BASEDIR}/.irbrc ~/
	ls -s ${BASEDIR}/.railsrc ~/
	ls -s ${BASEDIR}/.ruby-settings ~/

	#web pullers
	ln -s ${BASEDIR}/.curlrc ~/
	ln -s ${BASEDIR}/.wgetrc ~/
	#postgres
	ln -s ${BASEDIR}/.psqlrc ~/
	#editors
	ln -s ${BASEDIR}/.sublime_settings ~/
	ln -s ${BASEDIR}/.tmux.conf ~/
	ln -s ${BASEDIR}/.vimrc ~/
else
   echo "You need to select a better option"
fi