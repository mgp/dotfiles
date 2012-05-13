alias diff='/usr/bin/diff -c'
alias ll='ls -alFG'
alias grep='grep --before-context=1 --after-context=1 -n'
alias cp='/bin/cp -i'
alias pp='python -mjson.tool'

# mysql
alias mysql=/usr/local/mysql/bin/mysql
alias mysqld=/usr/local/mysql/bin/mysqld
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias mysql_config=/usr/local/mysql/bin/mysql_config
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# couchdb
alias restart_couch='/usr/bin/sudo launchctl stop org.apache.couchdb'
alias start_couch='/usr/bin/sudo launchctl load -w /Library/LaunchDaemons/org.apache.couchdb.plist'
alias stop_couch='/usr/bin/sudo launchctl unload /Library/LaunchDaemons/org.apache.couchdb.plist'

