export EDITOR=vim

# Elasticsearch env vars
export ES_HEAP_SIZE=5g

# Set up Maven-related paths and JAVA_HOME
export M2_HOME=/Users/wojcikstefan/maven/apache-maven-3.2.2
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)

# Add the Go env variables
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

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

# Enable oh-my-zsh
source $ZSH/oh-my-zsh.sh

# cd up to the root of a git project
alias cdg='cd $(git rev-parse --show-toplevel)'

# Hidden files shortcuts
alias showhiddenfiles="defaults write com.apple.Finder AppleShowAllFiles YES; killall Finder";
alias hidehiddenfiles="defaults write com.apple.Finder AppleShowAllFiles NO; killall Finder";

# Git shortcuts that git aliases can't easily do
alias st="clear; git status";
alias g='git'

# Shortcuts for Close.io
alias cdcio='cd ~/Repos/closeio/ && venv'
alias cdjs='cd closeio/static/js'
alias startservices='open ~/start_backends.app'
alias startcloseio='open ~/start_closeio.app'

# Shortcuts for Sztukonet
alias cdsz='cd ~/Repos/sztukonet/ && venv'

# virtualenv helpers
alias venv=". venv/bin/activate || . env/bin/activate || . .venv/bin/activate"

# Python Stuff
export PYTHONPATH=".:./lib"
alias pipr="pip install -U --exists-action=s -r requirements.txt"

# mtr
alias mtr="/usr/local/sbin/mtr"

# flush DNS cache
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

# memory and cpu percentage
alias memcpu="ps -amcwwwxo \"command %mem %cpu\" | grep -v grep | head -13"

# Ruby RVM

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH

# Allow built-in compiler to access header files installed by MacPorts
# (Fixes pip install gevent, etc.)
export CFLAGS="-I/opt/local/include $CFLAGS"
export LDFLAGS="-L/opt/local/lib $LDFLAGS"

# Add Postgres.app to PATH
PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Don't try to autocomplete the remote branch names (it's super slow otherwise)
__git_files () { 
    _wanted files expl 'local files' _files     
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Set up env variables for the New Relic Agent (used for local testing of Gunicorn)
export NEW_RELIC_ENVIRONMENT=development

# temporary
alias goinstall="go install github.com/closeio/flashback && go install github.com/closeio/flashback/cmd/flashback"

# ES command
alias elasticsearch="~/elasticsearch/elasticsearch-1.4.2/bin/elasticsearch"
