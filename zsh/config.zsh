export DOTFILES="$HOME/Projects/dotfiles"
export ZSH="$HOME/.oh-my-zsh" # Path oh-my-zsh installation
ZSH_THEME="awesomepanda" # oh-my-zsh theme

plugins=(git bundler brew docker docker-compose)

source $ZSH/oh-my-zsh.sh

HISTFILE="~/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# go
export GOPATH="$HOME/Projects/go"
export GOROOT="$HOME/bin/go"

# path
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="$HOME/bin:$PATH"
PATH="$HOME/.rbenv/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$PATH:$GOPATH/bin"
PATH="$DOTFILES/bin:$PATH"
PATH="$HOME/Projects/infrastructure/bin:$PATH"
export PATH

# postgres
# export PGHOST=localhost
# export PGUSER=postgres
# export PGDATA="/usr/local/var/postgres"

export MANPATH="/usr/local/man:$MANPATH"
export RBENV_ROOT="/usr/local/var/rbenv"
export EDITOR="/usr/local/bin/nvim"
export ERL_AFLAGS="-kernel shell_history enabled"
export ANSIBLE_VAULT_PASSWORD_FILE="$HOME/.ansible/vault_password/honeycomb"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"

# ----------------------------------------------------------------------------
# aliases
# ----------------------------------------------------------------------------
# ruby/rails
alias be='bundle exec'
alias ber='bundle exec rspec'
alias railsc='bundle exec rails console'
alias fs='foreman start'
alias rubo='bundle exec rubocop'
alias ruba='bundle exec rubocop -a' # autocorrect
alias rubop='bundle exec rubocop -p' # parallel
alias tea='RAILS_ENV=test bundle exec teaspoon'
# git
alias ga='git add'
alias gaa='git add --all'
alias gs='git status'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcob='git checkout -b'
alias gc='git commit -m'
alias gst='git stash'
alias gsta='git stash apply'
alias rb='git rebase -i'
alias rc='git rebase --continue'
alias ra='git rebase --abort'
# docker
alias dockpsql='docker run -t -d -p 5432:5432 --name postgres postgres'

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi
# ----------------------------------------------------------------------------

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
