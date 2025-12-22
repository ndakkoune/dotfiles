# Functions
source ~/.shell/functions.sh

# Before
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# Settings
ZSH_THEME="random"

export ZSH=$HOME/.oh-my-zsh

export EDITOR=nvim

setopt HIST_IGNORE_DUPS

# Bootstrap
source ~/.shell/bootstrap.sh

# Aliases
source ~/.shell/aliases.sh

if [ -f ~/.shell_local ]; then
    source ~/.shell_local
fi

# After
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# Initialize completion
autoload -U compinit && compinit

# Mise
eval "$(~/.local/bin/mise activate zsh)"
