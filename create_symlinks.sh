#!/bin/zsh

CONFIG_DIR="$HOME/.config"
SYNCED_DIR="$CONFIG_DIR/my-configs"

#TMUX
TMUX_CONF="$HOME/.tmux.conf"
TMUX_CONF_LOCAL="$HOME/.tmux.conf.local"

if [ -f $TMUX_CONF ]; then
    echo "An old tmux.conf file was found."
    mv $TMUX_CONF "$TMUX_CONF.old"
    echo "Moved with an .old suffix."
fi

if [ -f $TMUX_CONF_LOCAL ]; then
    echo "An old tmux.conf.local file was found."
    mv $TMUX_CONF_LOCAL "$TMUX_CONF_LOCAL.old"
    echo "Moved with an .old suffix."
fi
ln -s "$SYNCED_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"
ln -s "$SYNCED_DIR/tmux/.tmux.conf.local" "$HOME/.tmux.conf.local"


#ZSH
if [ -f "$HOME/.zshrc" ]; then
    echo "An old .zshrc file was found."
    mv "$HOME/.zshrc" "$HOME/.zshrc.old"
    echo "Moved with an .old suffix."
fi
ln -s "$SYNCED_DIR/.zshrc" "$HOME/.zshrc"
source "$HOME/.zshrc"


#NVIM
if [ -d "$CONFIG_DIR/nvim" ]; then
    echo "An old nvim config directory was found."
    mv "$CONFIG_DIR/nvim" "$CONFIG_DIR/nvim.old"
    echo "Moved with an .old suffix."
fi
ln -s "$SYNCED_DIR/nvim" "$CONFIG_DIR/nvim"


#ALACRITTY
if [ -d "$CONFIG_DIR/alacritty" ]; then
    echo "An old nvim config directory was found."
    mv "$CONFIG_DIR/alacritty" "$CONFIG_DIR/alacritty.old"
    echo "Moved with an .old suffix."
fi
ln -s "$SYNCED_DIR/alacritty" "$CONFIG_DIR/alacritty"


