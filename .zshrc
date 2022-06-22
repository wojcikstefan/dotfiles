# Always use NeoVim instead of the regular Vim.
alias vim=nvim

# Use vim (or NeoVim in fact) as the main editor.
export EDITOR=vim

# I execute git commands countless times a day. Might as well use "g" for short.
alias g=git
alias gst="git status"

# Sometimes an invalid DNS entry can get cached. It's useful to flush the cache
# in such case. This alias helps doing so without remembering intimate details
# of the `dscacheutil` command.
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

# Shortcuts for my current projects.
alias cdcio='cd ~/Repos/closeio/ && venv'
alias cdcioui='cd ~/Repos/close-ui/ && venv'
alias cdinf='cd ~/Repos/closeio-infrastructure/ && venv'
alias cdshark='cd ~/Repos/closeio-socketshark/'
alias cddialer='cd ~/Repos/dialer/'
alias cddev='cd ~/Repos/devtools/'
alias cdcleancat='cd ~/Repos/cleancat && venv'
alias cdmongo='cd ~/Repos/temp/mongoengine && venv'
alias dcpsql='cddev && dc exec postgres psql -U closeio_admin closeio'
alias dcbash='cddev && dc run --rm closeio_shell bash'

# Aliases for activating a Pythong virtual environment.
alias venv=". venv/bin/activate || . env/bin/activate || . .venv/bin/activate"
alias venv3=". venv3/bin/activate"

# Don't write `.pyc` files on the import of source modules. This can help
# prevent some bugs caused by stale `.pyc` files (which could happen when
# e.g. switching branches).
export PYTHONDONTWRITEBYTECODE="true"

# Shortcut for installing all dependencies from a `requirements.txt` file.
alias pipr="pip install --no-deps --exists-action=s -r requirements.txt"
