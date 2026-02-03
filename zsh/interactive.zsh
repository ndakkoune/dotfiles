export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="nicoulaj"

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source "$ZSH/oh-my-zsh.sh"

setopt HIST_IGNORE_DUPS
path_prepend "$HOME/.tmuxifier/bin"

if command -v fzf &> /dev/null; then
   source <(fzf --zsh)
fi

source "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
