export PATH="/opt/homebrew/opt/node@14/bin:$PATH"

alias standup='open -a Safari "https://us02web.zoom.us/j/asdfasdfasdf"'

alias kcwhereami='kubectl config current-context'
alias kc='kubectl'

alias start_docker="open -a Docker"
alias stop_docker="pkill -SIGHUP -f /Applications/Docker.app 'docker serve'"

alias dcd="docker compose down --remove-orphans"
alias dcr="docker compose run --rm app"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
