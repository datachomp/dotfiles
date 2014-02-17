export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

source ~/.bashrc


# General aliases
alias cd..='cd ..'
alias l='ls -l'
# alias ebash='subl ~/.bash_profile &'
alias ebash='mate ~/.bash_profile &'
alias reload_bash='source ~/.bash_profile'
alias bash_reload='source ~/.bash_profile'
alias systail='tail -f /var/log/system.log'
alias top='top -o cpu'
alias c='clear'
alias ipconfig='ifconfig'
alias q="exit"

# PostgreSQL
alias start_pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_pg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
#Redis
alias start_redis='redis-server /usr/local/etc/redis.conf'
alias startmemcache="memcached -d"
alias tailpg="tail -f ~/Library/Application\ Support/Postgres93/var/pg_log/*"

# Rails aliases
alias rtp='rake db:test:prepare'
alias a='autotest -rails' # makes autotesting quicker
alias rt='rake test'
alias rmt='rake minitest:all:quick'
alias rtu='rake test:units'
alias rtf='rake test:functionals'
alias rti='rake test:integration'
alias rst='rake stats'
alias tlog='tail -f log/development.log'
alias rdbm='rake db:migrate'
