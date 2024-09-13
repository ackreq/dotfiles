# name: 'Catppuccin Macchiato'
# url: 'https://github.com/catppuccin/fish'
# preferred_background: 24273a

# Macchiato Color Palette
set -l foreground cad3f5
set -l selection 363a4f
set -l comment 8087a2
set -l red ed8796
set -l orange f5a97f
set -l yellow a6da95
set -l green f5bde6
set -l purple f0c6c6
set -l cyan 8aadf4
set -l pink ed8796
set -l gray 6e738d

# Syntax Highlighting Colors
set -gx fish_color_normal $foreground
set -gx fish_color_command $cyan
set -gx fish_color_keyword $pink
set -gx fish_color_quote $yellow
set -gx fish_color_redirection $green
set -gx fish_color_end $orange
set -gx fish_color_comment $comment
set -gx fish_color_param $purple
set -gx fish_color_error $red
set -gx fish_color_gray $gray
set -gx fish_color_selection --background=$selection
set -gx fish_color_search_match --background=$selection
set -gx fish_color_option $yellow
set -gx fish_color_operator $green
set -gx fish_color_escape ee99a0
set -gx fish_color_autosuggestion $gray
set -gx fish_color_cancel $red

# Default Prompt Colors
set -gx fish_color_cwd eed49f
set -gx fish_color_user 8bd5ca
set -gx fish_color_host $cyan
set -gx fish_color_host_remote $yellow

# Completion Pager Colors
set -gx fish_pager_color_progress $gray
set -gx fish_pager_color_background
set -gx fish_color_status $red
set -gx fish_pager_color_prefix $green
set -gx fish_pager_color_completion $foreground
set -gx fish_pager_color_description $gray
set -gx fish_pager_color_selected_background --background=$selection
set -gx fish_pager_color_selected_prefix $cyan
set -gx fish_pager_color_selected_completion $foreground
set -gx fish_pager_color_selected_description $gray
set -gx fish_pager_color_secondary_background
set -gx fish_pager_color_secondary_prefix $cyan
set -gx fish_pager_color_secondary_completion $foreground
set -gx fish_pager_color_secondary_description $gray