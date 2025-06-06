export SYNCED_DIR="$(dirname $(realpath $HOME/.zshrc))"
export ZSH="$HOME/.oh-my-zsh"
export MANPAGER="nvim +Man!"

ZSH_THEME="$(cat ${SYNCED_DIR}/zsh_theme)"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias pushconfig="${SYNCED_DIR}/push.sh"
alias pullconfig="${SYNCED_DIR}/pull.sh && source \"$HOME/.zshrc\""

alias l="tree -L 1 --dirsfirst --sort name"

alias tmux="TERM=xterm-256color tmux"
alias t="TERM=xterm-256color tmux"
alias tm="TERM=xterm-256color tmux new -s"
alias ta="tmux attach"
alias tma="tmux attach -t"
alias tl="tmux ls"
alias tk="tmux kill-session -t"
alias ts="${SYNCED_DIR}/scripts/start-tmux.sh"

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
alias nvzsh="nvim \$(realpath \"${SYNCED_DIR}/.zshrc\")"

alias java="java -cp '.:$HOME/.local/java/algs4.jar:.output'"
alias javac="javac -cp '.:$HOME/.local/java/algs4.jar:.output' -d .output"

alias dev=". ./setenv.sh"

bindkey -v
bindkey '^R' history-incremental-search-backward

if test -f "${SYNCED_DIR}/zsh_override.sh"; then
    source  "${SYNCED_DIR}/zsh_override.sh"
fi
