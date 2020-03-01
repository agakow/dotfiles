export PROJECTS=$HOME/Projects
export DOTFILES=$PROJECTS/dotfiles
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="awesomepanda"
HISTFILE="~/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

source $ZSH/oh-my-zsh.sh

if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

## rbenv
if (( $+commands[rbenv] ))
then
  eval "$(rbenv init -)"
fi

## autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

## oh-my-zsh plugins
plugins=(
  git
  bundler
  brew
  docker
)

# config
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="/usr/local/bin/nvim"

# ruby
export RBENV_ROOT="/usr/local/var/rbenv"

# postgres
export PGHOST=localhost
export PGUSER=postgres

# erlang
export ERL_AFLAGS="-kernel shell_history enabled"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"

# path
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="$HOME/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$DOTFILES/bin:$PATH"
PATH="$HOME/.rbenv/bin:/.rbenv/shims:$PATH"
export PATH

## zsh options
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

## aliases
# ruby/rails
alias be='bundle exec'
alias ber='bundle exec rspec'
alias railsc='bundle exec rails console'
alias fs='foreman start'
alias rubo='bundle exec rubocop'
alias ruba='bundle exec rubocop -a' # autocorrect
alias rubop='bundle exec rubocop -p' # parallel

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
alias pgdock='docker run -t -d -p 5432:5432 --name postgres postgres'

# nv
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

## setopts
# don't beep on error
setopt no_beep
# don't beep on no history
setopt no_hist_beep
# don't beep on no list
setopt no_list_beep

# History
# Allow multiple terminal sessions to all append to one zsh command history
setopt append_history
# save timestamp of command and duration
setopt extended_history
# Add commands as they are typed, don't wait until shell exit
setopt inc_append_history
# when trimming history, lose oldest duplicates first
setopt hist_expire_dups_first
# Do not write events to history that are duplicates of previous events
setopt hist_ignore_dups
# remove command line from history list when first character on the line is a space
setopt hist_ignore_space
# When searching history don't display results already cycled through twice
setopt hist_find_no_dups

# Completion
# When completing from the middle of a word, move the cursor to the end of the word
setopt always_to_end
# show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_menu
# any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
# setopt auto_name_dirs
# if unset the cursor is set to the end of the word if completion is started
setopt complete_in_word
# don't expand aliases _before_ completion has finished
setopt complete_aliases
# do not autoselect the first completion entry
unsetopt menu_complete
unsetopt auto_name_dirs

## Completions
# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending
