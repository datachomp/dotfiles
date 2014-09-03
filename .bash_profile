export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

source ~/.bashrc

# aliases
source ~/.aliases


# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh;
