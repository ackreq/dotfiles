#!/usr/bin/env bash
set -u

_graphical_session() {
    local secs=$1; shift
    local name=$1; shift
    local total=$secs
    local bar i filled empty

    tput civis
    trap 'tput cnorm' EXIT INT TERM

    echo
    while (( secs > 0 )); do
        filled=$(( (total - secs + 1) * 20 / total ))
        empty=$(( 20 - filled ))
        bar=""
        for (( i=0; i<filled; i++ )); do bar+="█"; done
        for (( i=0; i<empty;  i++ )); do bar+="░"; done
        printf $'\r\033[K\033[95m%s\033[0m  \033[36m[%s]\033[0m' \
            "$name" "$bar"
        sleep 1
        (( secs-- ))
    done
    echo
    printf $'\033[1;32m✓ Starting %s...\033[0m\n' "$name"
    exec "$@"
}

_pick_session() {
    local options=("niri" "hyprland" "tty (no session)")

        printf '%s\n' "${options[@]}" | \
        fzf --prompt="Session > " \
        --height=~10 \
        --border=bold \
        --no-sort \
        --color="label:cyan:bold,prompt:green,pointer:magenta,selected-bg:#1e3a5f,hl:yellow" \
        --pointer="▶" \
        --no-info
}

if [[ -z "${DISPLAY-}" ]] && [[ "${XDG_VTNR-0}" -eq 1 ]]; then
    session=$(_pick_session)

    case "$session" in
        niri)     _graphical_session 3 "niri"     niri-session ;;
        hyprland) _graphical_session 3 "Hyprland" start-hyprland ;;
        *)        echo "Staying in TTY." ;;
    esac
fi
