# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils findutils

# Install Bash 4 and git
brew install bash git hub shellcheck

# Install proggy langs
brew install go node

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep homebrew/dupes/rsync homebrew/dupes/nano
brew install homebrew/dupes/whois homebrew/dupes/unzip homebrew/dupes/less homebrew/dupes/gzip
brew install homebrew/dupes/awk homebrew/dupes/bzip2 homebrew/dupes/diffstat homebrew/dupes/diffutils homebrew/dupes/screen

brew install jq sshuttle curl wget tmux wrk ssh-copy-id speedtest_cli youtube-dl p7zip asciidoc libdvdcss

# media
brew install youtube-dl p7zip asciidoc libdvdcss

# infra
brew install linode/cli/linode-cli
#brew install awscli

brew tap neovim/neovim
brew install --HEAD neovim
brew tap rogual/neovim-dot-app
brew install --HEAD neovim-dot-app

brew linkapps neovim-dot-app

brew cleanup

brew install caskroom/cask/brew-cask

brew cask install liteide   # go IDE

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

