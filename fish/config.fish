# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/stonecharioteer/code/tools/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# fish_add_path /usr/local/pgsql/bin/
fish_add_path /home/stonecharioteer/.local/bin
fish_add_path /home/stonecharioteer/.cargo/bin
# Install rvm from https://rvm.io/
fish_add_path /home/stonecharioteer/.rvm/bin
fish_add_path /usr/local/go/bin
#fish_add_path /home/stonecharioteer/code/tools/node/bin
# fish_add_path /home/stonecharioteer/code/tools/redis/src/
fish_add_path /home/stonecharioteer/code/tools/kui/
fish_add_path /home/stonecharioteer/.krew/bin
fish_add_path /home/stonecharioteer/tools/kui/
export PYTHONDONTWRITEBYTECODE='1'
export EDITOR='nvim'
# Aliases
alias vim='nvim'
alias tmux='tmux -u'
# export JAVA_HOME='/usr/lib/jvm/java-8-openjdk/jre'
export JAVA_HOME='/usr/lib/jvm/java-16-openjdk/'
# exa aliases
# First run `cargo install exa`
# see https://github.com/DarrinTisdale/zsh-aliases-exa

# general use
# ls
alias ls='exa'
# list, size, type, git
alias l='exa -lbF --git'
# long list
alias ll='exa -lbGF --git'
# long list, modified date sort
alias llm='exa -lbGF --git --sort=modified'
# all list
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'
# all + extended list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'

# speciality views
# one column, just names
alias lS='exa -1'        
# tree
alias lt='exa --tree --level=2'


# Git Aliases
# migrating from https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh 
alias g='git'
#compdef g=git
alias gst='git status'
#compdef _git gst=git-status
alias gd='git diff'
#compdef _git gd=git-diff
alias gdc='git diff --cached'
#compdef _git gdc=git-diff
alias gl='git pull'
#compdef _git gl=git-pull
alias gup='git pull --rebase'
#compdef _git gup=git-fetch
alias gp='git push'
#compdef _git gp=git-push
alias gd='git diff'
alias gd='git diff -w'

alias glg='git log --stat'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat -p'
alias glo='git log --oneline --decorate'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glol='git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias glola='git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --all'


function gdv
  git diff -w $argv | view -
end

#compdef _git gdv=git-diff
alias gc='git commit -v'
#compdef _git gc=git-commit
alias gc!='git commit -v --amend'
#compdef _git gc!=git-commit
alias gca='git commit -v -a'
#compdef _git gc=git-commit
alias gca!='git commit -v -a --amend'
#compdef _git gca!=git-commit
alias gcmsg='git commit -m'
#compdef _git gcmsg=git-commit
alias gco='git checkout'
#compdef _git gco=git-checkout
alias gcm='git checkout master'
alias gr='git remote'
#compdef _git gr=git-remote
alias grv='git remote -v'
#compdef _git grv=git-remote
alias grmv='git remote rename'
#compdef _git grmv=git-remote
alias grrm='git remote remove'
#compdef _git grrm=git-remote
alias grset='git remote set-url'
#compdef _git grset=git-remote
alias grup='git remote update'
#compdef _git grset=git-remote
alias grbi='git rebase -i'
#compdef _git grbi=git-rebase
alias grbc='git rebase --continue'
#compdef _git grbc=git-rebase
alias grba='git rebase --abort'
#compdef _git grba=git-rebase
alias gb='git branch'
#compdef _git gb=git-branch
alias gba='git branch -a'
#compdef _git gba=git-branch
alias gcount='git shortlog -sn'
#compdef gcount=git
alias gcl='git config --list'
alias gcp='git cherry-pick'
#compdef _git gcp=git-cherry-pick
alias glg='git log --stat --max-count=10'
#compdef _git glg=git-log
alias glgg='git log --graph --max-count=10'
#compdef _git glgg=git-log
alias glgga='git log --graph --decorate --all'
#compdef _git glgga=git-log
alias glo='git log --oneline'
#compdef _git glo=git-log
alias gss='git status -s'
#compdef _git gss=git-status
alias ga='git add'
#compdef _git ga=git-add
alias gm='git merge'
#compdef _git gm=git-merge
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gclean='git reset --hard; and git clean -dfx'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

#remove the gf alias
#alias gf='git ls-files | grep'

alias gpoat='git push origin --all; and git push origin --tags'
alias gmt='git mergetool --no-prompt'
#compdef _git gm=git-mergetool

alias gg='git gui citool'
alias gga='git gui citool --amend'
alias gk='gitk --all --branches'

alias gsts='git stash show --text'
alias gsta='git stash'
alias gstp='git stash pop'
alias gstd='git stash drop'

# Will cd into the top of the current repository
# or submodule.
alias grt='cd (git rev-parse --show-toplevel; or echo ".")'

# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit; and git push github master:svntrunk'
#compdef git-svn-dcommit-push=git

alias gsr='git svn rebase'
alias gsd='git svn dcommit'
#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch
  git symbolic-ref --short HEAD
end

function current_repository
  set ref (git symbolic-ref HEAD 2> /dev/null); or \
  set ref (git rev-parse --short HEAD 2> /dev/null); or return
  echo (git remote -v | cut -d':' -f 2)
end

# these aliases take advantage of the previous function
alias ggpull='git pull origin (current_branch)'
#compdef ggpull=git
alias ggpur='git pull --rebase origin (current_branch)'
#compdef ggpur=git
alias ggpush='git push origin (current_branch)'
#compdef ggpush=git
alias ggpnp='git pull origin (current_branch); and git push origin (current_branch)'
#compdef ggpnp=git

# Pretty log messages
function _git_log_prettily
  if ! [ -z $1 ]; then
    git log --pretty=$1
  end
end

alias glp="_git_log_prettily"
#compdef _git glp=git-log

# Work In Progress (wip)
# These features allow to pause a branch development and switch to another one (wip)
# When you want to go back to work, just unwip it
#
# This function return a warning if the current branch is a wip
function work_in_progress
  if git log -n 1 | grep -q -c wip; then
    echo "WIP!!"
  end
end

# these alias commit and uncomit wip branches
alias gwip='git add -A; git ls-files --deleted -z | xargs -0 git rm; git commit -m "wip"'
alias gunwip='git log -n 1 | grep -q -c wip; and git reset HEAD~1'

# turn on vi bindings
fish_vi_key_bindings
fzf_key_bindings

# color customizations

set fish_color_command white --italics
## Prompt and other configs
# Cargo install zoxide
zoxide init fish | source
# cargo install starship
starship init fish | source
#fortune | cowsay | lolcat

# install fundle if it isn't installed
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end
# install bass
fundle plugin 'edc/bass'
fundle plugin 'tuvistavie/fish-fastdir'
fundle init
# run `fundle install` when setting things up.

## Wasmer
# export WASMER_DIR="/home/stonecharioteer/.wasmer"
# [ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
alias hadolint='docker run --rm -i hadolint/hadolint < $1'


load_nvm >> /dev/null
rvm use ruby >> /dev/null
export ANSIBLE_DEPRECATION_WARNINGS=0
export HISTCONTROL=ignoreboth:erasedups # ignore any commands which have a space in the beginning when writing to history
