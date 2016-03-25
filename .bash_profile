PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"

export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

export PGDATABASE=postgres

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin


# link up hub
eval "$(hub alias -s)"

# ruby garbage collection and env settings
source ~/.ruby-settings

# aliases
source ~/.aliases

source ~/.bashrc

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh;
