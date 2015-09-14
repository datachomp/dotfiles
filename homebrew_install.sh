# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash


# Install proggy langs
brew install go elixir chruby ruby-install

# Install data stuff
brew install redis memcached rethinkdb sqlite

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep


binaries=(
  graphicsmagick
  webkit2png
  rename
  zopfli
  sshfs
  trash
  node
  tree
  ack
  hub
  git
)

echo "installing binaries..."
brew install ${binaries[@]}

brew cleanup


brew install caskroom/cask/brew-cask


# Apps
apps=(
  # alfred
  # dropbox
  # google-chrome
  # qlcolorcode
  # slack
  # firefox
  # hazel
  # qlmarkdown
  # seil
  # arq
  iterm2
  # qlprettypatch
  # shiori
  sublime-text3
  # virtualbox
  atom
  # flux
  # mailbox
  # qlstephen
  # sketch
  vlc
  # cloudup
  # nvalt
  quicklook-json
  # skype
)



# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}



brew tap caskroom/fonts
brew cask search /font-roboto/
# fonts
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
  font-inconsolata
  font-droid-sans-mono
  font-hack
  font-lobster
  font-marvel
  font-source-code-pro
  font-source-sans-pro
  font-spicy-rice
  font-ubuntu
  font-ubuntu-mono-powerline
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}
# https://github.com/caskroom/homebrew-fonts/tree/master/Casks
