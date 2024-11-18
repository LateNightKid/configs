# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias tmux="TERM=xterm-256color tmux"
alias t="TERM=xterm-256color tmux"
alias tm="TERM=xterm-256color tmux new -s"
alias ta="tmux attach"
alias tma="tmux attach -t"
alias tl="tmux ls"
alias tk="tmux kill-session -t"

alias cdd="cd ~/Downloads"

alias f="fzf"

alias n="nvim"

alias activate=". ./setenv.sh"

bindkey -v

# for file in ~/.config/my-configs/local/*; do
#     source $file;
#     # echo "Sourced file: $file"
# done
# echo "Done!"
