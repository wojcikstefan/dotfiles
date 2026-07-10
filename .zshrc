# Add Homebrew to the executable path.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Always use NeoVim instead of the regular Vim.
alias vim=nvim

# Use vim (or NeoVim in fact) as the main editor.
export EDITOR=vim

# Always use Cursor even when VS Code is requested.
# Requires Cursor's shell command to be installed which you can
# do via Cmd + Shift + P -> Shell Command: Install 'cursor' command
alias code=cursor
alias vscode=cursor

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

# Spin up Claude Code faster with "cc"
alias cc="claude"

# I execute devdawg commands often. Might as well use "dg" for short.
alias dg=devdawg

# Aliases for most common (and easiest to mis-type) git commands.
alias gd="git diff"
alias glg="git log"

# Set up zoxide so that I can use `z` as a smarter `cd` command.
eval "$(zoxide init zsh)"

# Set up fzf for quick fuzzy search.
source <(fzf --zsh)

# Set up lazydocker for an easier look at the state of my Docker.
alias lzd="lazydocker"

# Aliases for activating a Pythong virtual environment.
alias venv=". venv/bin/activate || . env/bin/activate || . .venv/bin/activate"
alias venv3=". venv3/bin/activate"

# Don't write `.pyc` files on the import of source modules. This can help
# prevent some bugs caused by stale `.pyc` files (which could happen when
# e.g. switching branches).
export PYTHONDONTWRITEBYTECODE="true"

# Some tooling puts their executables in `~/.local/bin`. Make sure those get found.
export PATH="$HOME/.local/bin:$PATH"

# I don't want everything I set up in zsh be publicly visible. Put the private
# stuff in a gitignored file. Gotta remember to move it when changing machines
# though.
source ~/.zsh_secret
