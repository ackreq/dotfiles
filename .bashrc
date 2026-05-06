#--------------------------------------------------- config ---
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1 Prompt
PS1='[\u@\h \W]\$ '

# Add directories to PATH
export PATH=$HOME/.cargo/bin/:$HOME/.local/bin/:$(go env GOPATH)/bin:$PATH

#-------------------------------------------------- aliases ---
source ~/.config/shell/alias
source ~/.config/lf/icons

#------------------------------------------------ functions ---
take() {
    mkdir -p "${1}"
    cd "${1}"
}

ds() {
    du -h --max-depth="${1}" "${2}" | sort -hr
}

#------------------------------------------ starship prompt ---
# eval "$(starship init bash)"

#------------------------------ autostart graphical session ---
[[ -f ~/.config/shell/session-picker.sh ]] && source ~/.config/shell/session-picker.sh
