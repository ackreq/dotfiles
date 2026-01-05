#------------------------------------------------- greeting ---
# function fish_greeting
# 	if [ $TERM = "st-256color" ]
#         if [ (pidof st | tr ' ' '\n' | wc -l) = 1 ]
#             bash $HOME/.config/shell/tarvis.sh
#         end
# 	end
# end
#
set fish_greeting

#--------------------------------------------------- export ---
set EDITOR "nvim"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
# set -x MANPAGER "sh -c 'col -bx | batcat -l man -p'"
export MANROFFOPT="-c"

#--------------------------------------------- alias & abbr ---
source ~/.config/shell/alias
source ~/.config/shell/abbr.fish

#--------------------------------------------------- prompt ---
source ~/.config/fish/prompts/sashimi.fish
#starship init fish | source
zoxide init fish | source
