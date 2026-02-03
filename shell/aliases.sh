if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# ls
alias ll='ls -lah'
alias la='ls -A'
alias l='ls'

# clear
alias c='clear'
alias cat='batcat'

# git
alias lg='lazygit'
alias gst='git status'

alias n='nvim'

alias k='kubectl'
