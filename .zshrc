export EDITOR=vim
export TERMINAL_TYPE=iterm2

# always use neovim
alias vim=nvim

# git shortcut
alias g=git

# docker-compose shortcut
alias dc=docker-compose

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

# Hidden files shortcuts
alias showhiddenfiles="defaults write com.apple.Finder AppleShowAllFiles YES; killall Finder";
alias hidehiddenfiles="defaults write com.apple.Finder AppleShowAllFiles NO; killall Finder";

# Close.io env vars (primarily for Docker)
export CLOSEIO_SSL_DIR=/Users/wojcikstefan/Repos/closeio/config/localhost

# Shortcuts for my projects
alias cdcio='cd ~/Repos/closeio/ && venv'
alias cdjs='cd ui/js'
alias cdless='cd ui/less'
alias cdinf='cd ~/Repos/closeio-infrastructure/ && venv'
alias cdshark='cd ~/Repos/closeio-socketshark/'
alias cddialer='cd ~/Repos/dialer/'
alias cddev='cd ~/Repos/devtools/'
alias cdcleancat='cd ~/Repos/cleancat && venv'
alias cdmongo='cd ~/Repos/temp/mongoengine && venv'
alias dcpsql='cddev && dc exec postgres psql -U closeio_admin closeio'
alias dcbash='cddev && dc run --rm closeio_api bash'
alias cdsz='cd ~/Repos/sztukonet/ && venv'
alias cdclaudia='cd ~/Repos/claudia/proj1 && venv'

# virtualenv helpers
alias venv=". venv/bin/activate || . env/bin/activate || . .venv/bin/activate"
alias venv3=". venv3/bin/activate"

# Python Stuff
export PYTHONPATH="."
export PYTHONDONTWRITEBYTECODE="true"
alias pipr="pip install --no-deps --exists-action=s -r requirements.txt"

# mtr
alias mtr="/usr/local/sbin/mtr"

# flush DNS cache
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

# memory and cpu percentage
alias memcpu="ps -amcwwwxo \"command %mem %cpu\" | grep -v grep | head -13"

# add extra bin dirs to the path
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH

# makes mtr work on my machine
alias mtr='PATH=/usr/local/sbin:$PATH sudo mtr'

# Don't try to autocomplete the remote branch names (it's super slow otherwise)
__git_files () { 
    _wanted files expl 'local files' _files     
}

# Set up env variables for the New Relic Agent (used for local testing of Gunicorn)
export NEW_RELIC_ENVIRONMENT=development

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/wojcikstefan/.travis/travis.sh ] && source /Users/wojcikstefan/.travis/travis.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
