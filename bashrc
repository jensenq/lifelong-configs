############# FUNCTIONS #############

aliases () { 
    alias gdb="gdb -q -tui";
    alias wherewasi="git log -1 --pretty=%B";
    alias killallstoppedjobs="kill -9 `jobs -ps`";
    alias untar='tar -zxvf ';

    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        alias gotojag="cd /research/jagodzinski/hpc_cloud/";
    else
        if [[ "$OSTYPE" == "darwin"* ]]; then
            alias rb="rm -f *~ .*~ \#* .\#*";
            alias firefox="open -a firefox";
            alias chrome="open -a google\ chrome";
            alias racket="/Applications/Racket\ v7.9/bin/racket";
        fi;
    fi
}

file_work () {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        if [ -d "~/Videos" ];     then rm -rf "~/Videos";     fi;
        if [ -d "~/Music" ];      then rm -rf "~/Music";      fi;
        if [ -d "~/Pictures" ];   then rm -rf "~/Pictures";   fi;
        if [ -d "~/Wallpapers" ]; then rm -rf "~/Wallpapers"; fi;
    else
        if [[ "$OSTYPE" == "darwin"* ]]; then
            if [ -d "~/Music" ];  then rm -rf "~/Music";  fi;
            if [ -d "~/Public" ]; then rm -rf "~/Public"; fi;
    fi
}

ls_colors () {
    if ls --color=auto -F -B --color -d . > /dev/null 2>&1; then
        export LS_OPTIONS="--color=auto -F -B";
    else
        if ls --color=auto -F -B -G -d . > /dev/null 2>&1; then
            export LS_OPTIONS="-G -F";
        fi;
    fi;
    alias ls="ls $LS_OPTIONS";
    alias ll="ls -lh $LS_OPTIONS";
    alias l="ls";
    alias s="ls";
    alias sl="ls";
    if [ -e "$(which dircolors)" ]; then
        if [ "$TERM" = "xterm-256color" -a -e ~/.dir_colors.256 ]; then
            eval $(dircolors ~/.dir_colors.256);
        else
            eval $(dircolors ~/.dir_colors);
        fi;
    fi;
    eval $(dircolors -b $HOME/.dircolors)
}

bash_options () { 
    shopt -s checkwinsize;
    shopt -s histappend;
    export HISTCONTROL=ignoreboth;
    export HISTSIZE=10000
}

misc_options () { 
    export GREP_OPTIONS='--color=auto';
    unset GREP_OPTIONS;
    export SSH_ASKPASS=;
    export PYTHONSTARTUP=~/.python;
    export KEY_MODELLER=MODELIRANJE;
    export ROSETTA3=/research/jagodzinski/rosetta/rosetta_src_2020.08.61146_bundle/main/source/bin
}

pathadd () { 
    _pa_varname=PATH;
    _pa_new_path="$1";
    if [ -n "$2" ]; then
        _pa_varname="$1";
        _pa_new_path="$2";
    fi;
    eval "_pa_oldvalue=\$${_pa_varname}";
    if [ -d "$_pa_new_path" ] && [[ ":$_pa_oldvalue:" != *":$_pa_new_path:"* ]]; then
        _pa_new_path=$(cd $_pa_new_path && pwd);
        if [ -n "$_pa_oldvalue" ]; then
            eval "export $_pa_varname=\"$_pa_new_path:$_pa_oldvalue\"";
        else
            export $_pa_varname="$_pa_new_path";
        fi;
    fi
}

source_if_exists () { 
    if [ -f "$1" ]; then
        . "$1";
    fi
}

bash_colors () { 
    termfile=/usr/share/terminfo/*/xterm*256color;
    if [ -n "$termfile" ]; then
        TERM='xterm-256color';
        export CLICOLOR="YES";
    else
        TERM='xterm-color';
    fi;
    export TERM;
    [[ -n ${DISPLAY} ]] && [[ -f ~/.Xdefaults ]] && xrdb ~/.Xdefaults;
    red="\001\[\033[0;31m\]\002";
    cyan="\001\[\033[0;36m\]\002";
    gray="\001\[\033[1;38m\]\002";
    green="\001\[\033[0;32m\]\002";
    ltgreen="\001\[\033[1;32m\]\002";
    ltblue="\001\[\033[1;34m\]\002";
    reset="\001\[\033[0m\]\002";
    red="\[\033[0;31m\]";
    cyan="\[\033[0;36m\]";
    gray="\[\033[1;90m\]";
    green="\[\033[0;32m\]";
    ltgreen="\[\033[1;32m\]";
    ltblue="\[\033[1;34m\]";
    reset="\[\033[0m\]";
    host_color="$green";
    export PS1="${gray}(${host_color}\h${gray}):${cyan}\W${gray}\$${reset} ";
    export PROMPT_COMMAND='echo -ne "\033]0;${USER} @ ${HOSTNAME} : ${PWD}\007"'
}


clean_path () { 
    export PATH=$(echo "$PATH" | awk -F: '{for (i=1;i<=NF;i++) { if ( !x[$i]++ ) printf("%s:",$i); }}')
}

conda_init () { 
    __conda_setup="$('/home/jensenq/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)";
    if [ $? -eq 0 ]; then
        eval "$__conda_setup";
    else
        if [ -f "/home/jensenq/miniconda3/etc/profile.d/conda.sh" ]; then
            . "/home/jensenq/miniconda3/etc/profile.d/conda.sh";
        else
            export PATH="/home/jensenq/miniconda3/bin:$PATH";
        fi;
    fi;
    unset __conda_setup
}

main () 
{ 
    aliases;
    bash_colors;
    bash_options;
    ls_colors;
    misc_options;
    conda init;
    file_work;

    pathadd /usr/sbin;
    pathadd $HOME/bin;
    pathadd .;
    clean_path;

    source_if_exists /etc/lc.bashrc;
    source_if_exists /etc/bashrc;
    source_if_exists /usr/local/tools/dotkit/init.sh
}
