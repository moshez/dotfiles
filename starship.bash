eval "$(starship init bash)"
function set_win_title(){
    echo -ne "\033]0; $(basename "$PWD") ${VIRTUAL_ENV_PROMPT} \007";
}
starship_precmd_user_func="set_win_title"
