export PATH="/opt/homebrew/opt/node@14/bin:$PATH"

alias standup='open -a Safari "https://us02web.zoom.us/j/asdfasdfasdf"'

alias kcwhereami='kubectl config current-context'
alias kc='kubectl'

alias start_docker="open -a Docker"
alias stop_docker="pkill -SIGHUP -f /Applications/Docker.app 'docker serve'"

alias dcd="docker compose down --remove-orphans"
alias dcr="docker compose run --rm app"

alias netcheck="networkQuality -s"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/bzip2/bin:$PATH"
export PATH="/opt/homebrew/opt/unzip/bin:$PATH"


# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/rob/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
