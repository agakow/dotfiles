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