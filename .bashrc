#--------------------------------------------------- config ---
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1 Prompt
PS1='[\u@\h \W]\$ '

# Add directories to PATH
export PATH=$HOME/.cargo/bin/:$HOME/.local/bin/:$PATH

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
_graphical_session() {
    local secs=$1
    shift
    tput civil; trap 'tput cnorm' EXIT
    echo
    while (( secs > 0 )); do
        local label="seconds"
        (( secs == 1 )) && label="second"
        printf "\r\033[32mStarting graphical session in \033[33m%d\033[32m %s...\033[0m" "$secs" "$label"
        sleep 1
        secs=$(( secs - 1 ))
    done
    echo
    exec "$@"
}

if [[ -z "${DISPLAY}" ]] && [[ "${XDG_VTNR}" -eq 1 ]]; then
    _graphical_session 5 niri-session
    # _graphical_session 5 startx -- -quiet
fi
