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

# postgres
# export PGHOST=localhost
# export PGUSER=postgres
# export PGDATA="/usr/local/var/postgres"

export MANPATH="/usr/local/man:$MANPATH"
export RBENV_ROOT="/usr/local/var/rbenv"
export EDITOR="/usr/local/bin/nvim"
export ERL_AFLAGS="-kernel shell_history enabled"
export ANSIBLE_VAULT_PASSWORD_FILE="$HOME/.ansible/vault_password/honeycomb"
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export ANT_HOME="/usr/local/opt/ant"
export MAVEN_HOME="/usr/local/opt/maven"
export GRADLE_HOME="/usr/local/opt/gradle"
export INTEL_HAXM_HOME="/usr/local/Caskroom/intel-haxm"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_AVD_HOME="$HOME/.android/avd"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"

# path
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="$HOME/bin:$PATH"
PATH="$HOME/.rbenv/bin:/.rbenv/shims:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="$PATH:$GOPATH/bin"
PATH="$DOTFILES/bin:$PATH"
PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_AVD_HOME"

export PATH

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
