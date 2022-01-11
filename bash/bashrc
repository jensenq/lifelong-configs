# [WTFPL] DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE Version 2, December 2004 Copyright (C) 2021 Anonymous Everyone is permitted to copy and distribute verbatim or modified copies of this license document, and changing it is allowed as long as the name is changed. DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 0. You just DO WHAT THE FUCK YOU WANT TO. ----------------------------------------------------------------------------------------------------------------------------|

little_dudes=(  
"(ꈍ ꒳ ꈍ✿)*:･ﾟﾟ⭑"
"✧♪○ヽ( ᐛ )ﾉ ♩✧♪♬⭑"
"ₒ ° ₒ 𓂂(⁍̴̆◡⁍̴̆ )⊃✫･⭑"
"✲ﾟ｡.(✿╹◡╹)ﾉ☆.₀:₀⭑"
);
da_kitties=(  
"/ᐠ｡ꞈ｡ᐟ\\ﾉ   ᓚᘏᗢ"
"✧/ᐠ-ꞈ-ᐟ\\ﾉ  ᓚᘏᗢ"
"/ᐠ. ᴗ.ᐟ\\ﾉ  ᓚᘏᗢ"
"/ᐠ. ᴗ.ᐟ\\ﾉ  ᓚᘏᗢ"
"/ᐠ ̥ ̣̮ ̥ ᐟ\\ﾉ  ᓚᘏᗢ"
"/ᐠ.｡.ᐟ\\ˎˊ˗ ᓚᘏᗢ"
"/ᐠ.  ̫.ᐟ\\ฅ  ᓚᘏᗢ"
"ฅ/ᐠ･o･ᐟ\\ฅ  ᓚᘏᗢ"
"/ᐠ^._.^ᐟ\\ﾉ ᓚᘏᗢ"
);  
sparkles=(
"⭑･ﾟﾟ･*:༅｡.｡༅:*ﾟ :*:✼✿   "
"✧･ﾟ: *✧･ﾟ  ･ﾟ *:･ﾟ✧*:･ﾟ✧"
"~ ヾ๑ˊᵕˋ๑◞ ♡ ~ ヾˊᵕˋ๑◞ ♡"
"｡ﾟ❁ུ۪ °ₒ 𓂂 ˚ 𓂂 ₒ ° ₒ 𓂂 ˚˖⋆"
);

# todo: find better colors
BLACK='\[\e[0;30m\]'; BBLACK='\[\e[1;30m\]'; BGBLACK='\[\e[40m\]'; RED='\[\e[0;31m\]'; BRED='\[\e[1;31m\]'; BGRED='\[\e[41m\]'; GREEN='\[\e[0;32m\]'; BGREEN='\[\e[1;32m\]'; BGGREEN='\[\e[1;32m\]'; YELLOW='\[\e[0;33m\]'; BYELLOW='\[\e[1;33m\]'; BGYELLOW='\[\e[1;33m\]'; BLUE='\[\e[0;34m\]'; BBLUE='\[\e[1;34m\]'; BGBLUE='\[\e[1;34m\]'; MAGENTA='\[\e[0;35m\]'; BMAGENTA='\[\e[1;35m\]'; BGMAGENTA='\[\e[1;35m\]' ; CYAN='\[\e[0;36m\]'; BCYAN='\[\e[1;36m\]'; BGCYAN='\[\e[1;36m\]'; WHITE='\[\e[0;37m\]'; BWHITE='\[\e[1;37m\]'; BGWHITE='\[\e[1;37m\]';
COLOR_NC='\e[0m' COLOR_BLACK='\e[0;30m'; COLOR_GRAY='\e[1;30m'; COLOR_RED='\e[0;31m'; COLOR_LIGHT_RED='\e[1;31m'; COLOR_GREEN='\e[0;32m'; COLOR_LIGHT_GREEN='\e[1;32m'; COLOR_BROWN='\e[0;33m'; COLOR_YELLOW='\e[1;33m'; COLOR_BLUE='\e[0;34m'; COLOR_LIGHT_BLUE='\e[1;34m'; COLOR_PURPLE='\e[0;35m'; COLOR_LIGHT_PURPLE='\e[1;35m'; COLOR_CYAN='\e[0;36m'; COLOR_LIGHT_CYAN='\e[1;36m'; COLOR_LIGHT_GRAY='\e[0;37m'; COLOR_WHITE='\e[1;37m'
# --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|


rand_kitty () {
  prompt=${da_kitties[$RANDOM %  ${#da_kitties[@]}]} #pick random
  if [ "$?" -ne "0" ]; then prompt="${RED}ಠ ̫ಠ\n"; fi # if last command went to stderr, sad face
  PS1="${COLOR_LIGHT_BLUE}\@ ${COLOR_LIGHT_GREEN}\w ${COLOR_WHITE}${prompt} ${COLOR_NC}"
}


function join_by { local d=${1-} f=${2-}; if shift 2; then printf %s "$f" "${@/#/$d}"; fi; }

aliases () { 
    alias gdb="gdb -q -tui";
    alias wherewasi="git log -1 --pretty=%B";
    alias killallstoppedjobs="kill -9 `jobs -ps`";
    alias untar='tar -zxvf ';

    alias p="python";
    alias py="python";
    alias pyt="python";
    alias pyth="python";

    alias vim="/opt/homebrew/bin/vim"

    alias ls="ls $LS_OPTIONS";
    alias ll="ls -lh $LS_OPTIONS";
    alias l="ls";
    alias s="ls";
    alias sl="ls";
    alias grep="grep --color=auto"

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
ls_colors () {

    if ls --color=auto -F -B --color -d . > /dev/null 2>&1; then
        export LS_OPTIONS="--color=auto -F -B";
    else
        if ls --color=auto -F -B -G -d . > /dev/null 2>&1; then
            export LS_OPTIONS="-G -F";
        fi;
    fi;
    if [ -e "$(which dircolors)" ]; then
        if [ "$TERM" = "xterm-256color" -a -e ~/.dircolors.256 ]; then
            eval $(dircolors ~/.dircolors.256);
        else
            eval $(dircolors ~/.dircolors);
        fi;
    fi;
}
file_shit () {
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
    fi
}
bash_options () { 
    shopt -s checkwinsize;
    shopt -s histappend;
    export HISTCONTROL=ignoreboth;
    export HISTSIZE=10000
}
misc_options () { 
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
clean_path () { 
    export PATH=$(echo "$PATH" | awk -F: '{for (i=1;i<=NF;i++) { if ( !x[$i]++ ) printf("%s:", $i); }}')
}
conda_init () { 
    conda_dir="$HOME/tools_n_packages/miniconda3";
    __conda_setup="$( $conda_dir'/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "$conda_dir/etc/profile.d/conda.sh" ]; then
            . "$conda_dir/etc/profile.d/conda.sh"  
        else
            export PATH="$conda_dir'/bin:$PATH"
        fi
    fi
    unset __conda_setup
}
powerline(){
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /Library/Frameworks/Python.framework/Versions/3.9/lib/python3.9/site-packages
}
source_if_exists () { 
    if [ -f "$1" ]; then
        . "$1";
    fi
}
cursor_col() {
  local _row col
  IFS=';' read -s -dR -p $'\033[6n' _row col
  echo "${col}"
}
ps1_head() {
  if (( $(cursor_col) > 1 )); then
    ps1_head_text=$'\n'╭-
  else
    ps1_head_text=╭-
  fi
  rand_kitty;
}



# Main: 
ls_colors;
bash_options;
misc_options;
conda_init;
file_shit;
aliases;
pathadd /usr/sbin;
pathadd $HOME/bin;
pathadd .;
clean_path;
source_if_exists /etc/lc.bashrc;
source_if_exists /etc/bashrc;
source_if_exists /usr/local/tools/dotkit/init.sh

export PROMPT_COMMAND=ps1_head


















#powerline() {
#    ## Uncomment to disable git info
#    #POWERLINE_GIT=0
#    # Colors
#    COLOR_RESET='\[\033[m\]'
#    COLOR_CWD=${COLOR_CWD:-'\[\033[0;34m\]'} # blue
#    COLOR_GIT=${COLOR_GIT:-'\[\033[0;36m\]'} # cyan
#    COLOR_SUCCESS=${COLOR_SUCCESS:-'\[\033[0;32m\]'} # green
#    COLOR_FAILURE=${COLOR_FAILURE:-'\[\033[0;31m\]'} # red
#    # Symbols
#    SYMBOL_GIT_BRANCH=${SYMBOL_GIT_BRANCH:-⑂}
#    SYMBOL_GIT_MODIFIED=${SYMBOL_GIT_MODIFIED:-*}
#    SYMBOL_GIT_PUSH=${SYMBOL_GIT_PUSH:-↑}
#    SYMBOL_GIT_PULL=${SYMBOL_GIT_PULL:-↓}
#    if [[ -z "$PS_SYMBOL" ]]; then
#      case "$(uname)" in
#          Darwin)   PS_SYMBOL='';;
#          Linux)    PS_SYMBOL='$';;
#          *)        PS_SYMBOL='%';;
#      esac
#    fi
#    __git_info() { 
#        [[ $POWERLINE_GIT = 0 ]] && return # disabled
#        hash git 2>/dev/null || return # git not found
#        local git_eng="env LANG=C git"   # force git output in English to make our work easier
#
#        # get current branch name
#        local ref=$($git_eng symbolic-ref --short HEAD 2>/dev/null)
#
#        if [[ -n "$ref" ]]; then
#            # prepend branch symbol
#            ref=$SYMBOL_GIT_BRANCH$ref
#        else
#            # get tag name or short unique hash
#            ref=$($git_eng describe --tags --always 2>/dev/null)
#        fi
#
#        [[ -n "$ref" ]] || return  # not a git repo
#
#        local marks
#
#        # scan first two lines of output from `git status`
#        while IFS= read -r line; do
#            if [[ $line =~ ^## ]]; then # header line
#                [[ $line =~ ahead\ ([0-9]+) ]] && marks+=" $SYMBOL_GIT_PUSH${BASH_REMATCH[1]}"
#                [[ $line =~ behind\ ([0-9]+) ]] && marks+=" $SYMBOL_GIT_PULL${BASH_REMATCH[1]}"
#            else # branch is modified if output contains more lines after the header line
#                marks="$SYMBOL_GIT_MODIFIED$marks"
#                break
#            fi
#        done < <($git_eng status --porcelain --branch 2>/dev/null)  # note the space between the two <
#
#        # print the git branch segment without a trailing newline
#        printf " $ref$marks"
#    }
#
#    ps1() {
#        # Check the exit code of the previous command and display different
#        # colors in the prompt accordingly. 
#        if [ $? -eq 0 ]; then
#            local symbol="$COLOR_SUCCESS $PS_SYMBOL $COLOR_RESET"
#        else
#            local symbol="$COLOR_FAILURE $PS_SYMBOL $COLOR_RESET"
#        fi
#
#        local cwd="$COLOR_CWD\w$COLOR_RESET"
#        # Bash by default expands the content of PS1 unless promptvars is disabled.
#        # We must use another layer of reference to prevent expanding any user
#        # provided strings,  which would cause security issues.
#        # POC: https://github.com/njhartwell/pw3nage
#        # Related fix in git-bash: https://github.com/git/git/blob/9d77b0405ce6b471cb5ce3a904368fc25e55643d/contrib/completion/git-prompt.sh#L324
#        if shopt -q promptvars; then
#            __powerline_git_info="$(__git_info)"
#            local git="$COLOR_GIT\${__powerline_git_info}$COLOR_RESET"
#        else
#            # promptvars is disabled. Avoid creating unnecessary env var.
#            local git="$COLOR_GIT$(__git_info)$COLOR_RESET"
#        fi
#
#        PS1="$cwd$git$symbol"
#    }
#
#    PROMPT_COMMAND="ps1${PROMPT_COMMAND:+; $PROMPT_COMMAND}"
#}

