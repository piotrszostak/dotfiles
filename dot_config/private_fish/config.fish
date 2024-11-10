# ~/.config/fish/config.fish
# to manualy source files:
# source ~/.config/fish/conf.d/aliases.fish
# source ~/.config/fish/conf.d/functions.fish
# source ~/.config/fish/conf.d/z.fish

# First line removes the path; second line sets it.
# Without it path gets massive & fish becomes slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths

### EXPORT ###
set fish_greeting # Supresses fish's intro message
set TERM xterm-256color # Sets the terminal type
set EDITOR nivm # $EDITOR use neovim in terminal
set VISUAL code # $VISUAL use VScode in GUI mode

### set MANPAGER (less or nvim)
set -x MANPAGER "nvim +Man!"
# set -x MANPAGER "less"

# ranger settings
set -x RANGER_LOAD_DEFAULT_RC 0

# add to easy using bash-scripts
# set -U fish_user_paths /home/ps/Documents/bash-scripts/ $fish_user_paths

### AUTOCOMPLETE AND HIGHLIGHT COLORS
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

### Dracula Color Palette ###
set -l foreground f8f8f2
set -l selection 44475a
set -l comment 6272a4
set -l red ff5555
set -l orange ffb86c
set -l yellow f1fa8c
set -l green 50fa7b
set -l purple bd93f9
set -l cyan 8be9fd
set -l pink ff79c6

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment
set -g fish_color_cancel $red --reverse
set -g fish_color_option $orange

# Default Prompt Colors
set -g fish_color_cwd $green
set -g fish_color_host $purple
set -g fish_color_host_remote $purple
set -g fish_color_user $cyan

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_background
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection
set -g fish_pager_color_selected_prefix $cyan
set -g fish_pager_color_selected_completion $foreground
set -g fish_pager_color_selected_description $comment
set -g fish_pager_color_secondary_background
set -g fish_pager_color_secondary_prefix $cyan
set -g fish_pager_color_secondary_completion $foreground
set -g fish_pager_color_secondary_description $comment
