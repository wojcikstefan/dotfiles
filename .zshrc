export EDITOR=vim

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="wedisagree"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx terminalapp python)

source $ZSH/oh-my-zsh.sh

# navigational shortcuts
alias cdsites="cd ~/Sites";
# cd up to the root of a git project
alias cdg='cd $(git rev-parse --show-toplevel)'

# hidden files shortcutes
alias showhiddenfiles="defaults write com.apple.Finder AppleShowAllFiles YES; killall Finder";
alias hidehiddenfiles="defaults write com.apple.Finder AppleShowAllFiles NO; killall Finder";

# git shortcuts that git aliases can't easily do
alias st="clear; git status";
alias g='git'
alias gitspp='git stash; git pull --rebase; git stash pop'
alias gitprp='git pull --rebase && git push'

# Shortcuts for starting/stopping various services 
alias mysql='/usr/local/mysql/bin/mysql -uroot -A'
alias mysql_start="/Library/StartupItems/MySQLCOM/MySQLCOM start"
alias mysql_stop="/Library/StartupItems/MySQLCOM/MySQLCOM stop"

# Shortcuts for Close.io
alias cdcio='cd ~/Repos/closeio/ && venv'
alias startservices='open ~/start_closeio_services.app'

# Shortcuts for Sztukonet
alias cdsz='cd ~/Repos/sztukonet/ && venv'

# virtualenv helpers
alias virtualenv="virtualenv-2.7"
alias venv=". venv/bin/activate || . env/bin/activate"

#ack
alias ack='ack-5.12'

# Python Stuff
export PYTHONPATH="./lib:.:/Library/Python/2.7/site-packages:$PYTHONPATH";
alias pipr="pip install -U --exists-action=s -r requirements.txt"
alias startcelery="./manage.py celery worker -B"

# mtr
alias mtr="/usr/local/sbin/mtr"

# flush DNS cache
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

# memory and cpu percentage
alias memcpu="ps -amcwwwxo \"command %mem %cpu\" | grep -v grep | head -13"

# start elasticsearch
alias startelasticsearch="eval \"ES_HEAP_SIZE=5g `cat /usr/bin/elasticsearch` -f\""

# Ruby RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH

# Allow built-in compiler to access header files installed by MacPorts
# (Fixes pip install gevent, etc.)
export CFLAGS="-I/opt/local/include $CFLAGS"
export LDFLAGS="-L/opt/local/lib $LDFLAGS"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/mysql/bin/ # add mysql binaries to the path

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Don't try to autocomplete the remote branch names (it's super slow otherwise)
__git_files () { 
    _wanted files expl 'local files' _files     
}
