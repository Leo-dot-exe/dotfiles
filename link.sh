#!/bin/bash

show_help() {
    echo "Usage: $0 [-l value] [-h]"
    echo "  -l <value>  Values: (tmux, bashrc, starship, ghostty, hypr, rofi, waybar, nvim)"
    echo "  -h          Show help"
}

# Default values
SECTION=""

while getopts "l:h" opt; do
    case $opt in
        l)
            SECTION="$OPTARG"
            ;;
        h)
            show_help
            exit 0
            ;;
        \?)
            echo "Invalid option"
            show_help
            exit 1
            ;;
    esac
done

# Execute actions based on flags
if [ -n "$SECTION" ]; then
    echo "Running action for section: $SECTION"

    case "$SECTION" in
        tmux)
            echo "Linking tmux..."
            ln -f ~/Dev/dotfiles/.tmux.conf ~/.tmux.conf
            ;;
        bashrc)
            echo "Linking bashrc..."
            ln -f ~/Dev/dotfiles/.bashrc ~/.bashrc
            ;;
        starship)
            echo "Linking starship..."
            ln -f ~/Dev/dotfiles/.config/starship.toml ~/.config/starship.toml
            ;;
        ghostty)
            echo "Linking ghostty..."
            ln -sf ~/Dev/dotfiles/.config/ghostty ~/.config/ghostty
            ;;
        hypr)
            echo "Linking hypr..."
            ln -sf ~/Dev/dotfiles/.config/hypr ~/.config/hypr
            ;;
        rofi)
            echo "Linking rofi..."
            ln -sf ~/Dev/dotfiles/.config/rofi ~/.config/rofi
            ;;
        waybar)
            echo "Linking waybar..."
            ln -sf ~/Dev/dotfiles/.config/waybar ~/.config/waybar
            ;;
        nvim)
            echo "Linking nvim..."
            ln -sf ~/Dev/dotfiles/.config/nvim ~/.config/nvim
            ;;
        *)
            echo "Error: Unknown option '$SECTION'"
            exit 1
            ;;
    esac
fi
fi

