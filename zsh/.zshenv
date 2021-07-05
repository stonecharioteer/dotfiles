export PATH="$HOME/.cargo/bin/:$PATH"
alias vim="nvim"
alias python="python3"
alias tmux="tmux -u"
. $HOME/code/tools/anaconda3/etc/profile.d/conda.sh
alias zshrc="vim $HOME/.zshrc && source $HOME/.zshrc"
alias zshenv="vim $HOME/.zshenv && source $HOME/.zshenv"
export VIRTUAL_ENV_DISABLE_PROMPT=
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export TERM=xterm-256color
set -o vi
export EDITOR=vim
set editing-mode vi
set keymap vi-command
export VIRTUAL_ENV_DISABLE_PROMPT=
#export PYTHONSTARTUP=~/.pythonrc.py
export NODE_TLS_REJECT_UNAUTHORIZED=0
export PYTHONDONTWRITEBYTECODE=1
alias open="xdg-open"

export PATH="$PATH:/snap/bin/"
alias desktop="ssh gaudy"
export PATH="$PATH:$HOME/code/tools/go/go1.15/bin/"
alias fd="fdfind"
export PATH="$HOME/code/tools/racketlang/bin:$PATH"
export PATH="$HOME/code/tools/node/node-v14.15.4-linux-x64/bin:$PATH"
export GEM_HOME="$HOME/code/tools/gems/"
export PATH="$HOME/code/tools/gems/bin:$PATH"
export PATH="$HOME/.krew/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
alias ansible="/home/stonecharioteer/code/tools/anaconda3/envs/ansible/bin/ansible -i /home/stonecharioteer/code/projects/raspberry_pi/playbooks/inventory.ini"
alias k='kubectl'
export PATH="$HOME/code/tools/redis-6.2.1/src:$PATH"


