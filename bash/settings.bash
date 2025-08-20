HISTSIZE=1048576
HISTFILESIZE=2000
HISTFILE="$HOME/.bash_history"
SAVEHIST=$HISTSIZE
shopt -s histappend # append to history file
shopt -s globstar

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"
export EDITOR="/opt/nvim-linux-x86_64/bin"
