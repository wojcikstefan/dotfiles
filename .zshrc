# Add Homebrew to the executable path.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Always use NeoVim instead of the regular Vim.
alias vim=nvim

# Use vim (or NeoVim in fact) as the main editor.
export EDITOR=vim

# Tell ZSH to auto-complete my commands in a case-insensitive fashion.
# Capital letters still only match capital letters, but lowercase letters
# will match uppercase ones thanks to this `zstyle` pattern.
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# I execute git commands countless times a day. Might as well use "g" for short.
alias g=git
alias gst="git status"

# Sometimes an invalid DNS entry can get cached. It's useful to flush the cache
# in such case. This alias helps doing so without remembering intimate details
# of the `dscacheutil` command.
alias flushdns="dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

# Alias "docker-compose" as "dc". Technically there exists a tool called "dc"
# already, but I never use it, and I use docker-compose frequent enough to
# warrant this rename.
alias dc="docker-compose"

# Shortcuts for my current projects.
alias cdcio='cd ~/Repos/closeio/ && venv'
alias cdcioui='cd ~/Repos/close-ui/'
alias cdcioinf='cd ~/Repos/closeio-infrastructure/ && venv'
alias cdcioshark='cd ~/Repos/closeio-socketshark/'
alias cdciodialer='cd ~/Repos/dialer/ && venv'
alias cdcioevents='cd ~/Repos/events_service/'
alias cdciodev='cd ~/Repos/devtools/'
alias cdciozapier='cd ~/Repos/zapier-cli/'
alias cdmongo='cd ~/Repos/temp/mongoengine && venv'
alias cddotfiles='cd ~/Repos/dotfiles'
alias dcpsql='cdciodev && dc exec postgres psql -U closeio_admin closeio'
alias dcbash='cdciodev && dc exec closeio_api echo && dc exec closeio_api bash || dc run --rm closeio_api bash'
alias dclogs='cdciodev && dc logs --tail 100 -f'

# Aliases for most common (and easiest to mis-type) git commands.
alias gd="git diff"
alias glg="git log"

# Aliases for activating a Pythong virtual environment.
alias venv=". venv/bin/activate || . env/bin/activate || . .venv/bin/activate"
alias venv3=". venv3/bin/activate"

# Don't write `.pyc` files on the import of source modules. This can help
# prevent some bugs caused by stale `.pyc` files (which could happen when
# e.g. switching branches).
export PYTHONDONTWRITEBYTECODE="true"

# Shortcut for installing all dependencies from a `requirements.txt` file.
alias pipr="pip install --no-deps --exists-action=s -r requirements.txt"

# Add the Brew-installed Python v3.8 commands to the executable path.
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# Add "~/bin" to the path. Close infra tools require this one to work.
export PATH=~/bin:$PATH

# Alias "python3" as "python" so that I don't have to type "python3" each time.
alias python=python3

# Source some secrets that I want available as env vars in every shell session,
# but that I don't wanna commit to my dotfiles repo.
source ~/.zsh_secrets
