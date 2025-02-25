export ZSH="$HOME/.oh-my-zsh"
export MANPAGER="nvim +Man!"

ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias pushconfig="$HOME/.config/my-configs/sync.sh"
alias pullconfig="$HOME/.config/my-configs/update.sh && source \"$HOME/.zshrc\""

alias l="tree -L 1 --dirsfirst --sort name"
alias tmux="TERM=xterm-256color tmux"
alias t="TERM=xterm-256color tmux"
alias tm="TERM=xterm-256color tmux new -s"
alias ta="tmux attach"
alias tma="tmux attach -t"
alias tl="tmux ls"
alias tk="tmux kill-session -t"

alias gs="git status"
alias ga="git add"
alias gap="git add -p"
alias gcm="git commit -m"
alias gd="git diff"
alias gc="git checkout "
alias gcb="git checkout -b"

alias p3="python3"
alias cdd="cd ~/Downloads"

alias f="fzf"

alias n="nvim ."
alias nv="nvim"

alias dev=". ./setenv.sh"

bindkey -v
bindkey '^R' history-incremental-search-backward

for file in ~/.config/my-configs/local/*; do
    source $file;
done

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
