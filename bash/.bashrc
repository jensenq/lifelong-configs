# Colors
BLACK='\[\e[0;30m\]'; WHITE='\[\e[0;37m\]'; RED='\[\e[0;31m\]'; GREEN='\[\e[0;32m\]'; BLUE='\[\e[0;34m\]'; YELLOW='\[\e[0;33m\]'; MAGENTA='\[\e[0;35m\]'; CYAN='\[\e[0;36m\]';                                                                                                                                                                                                                                                    #
BBLACK='\[\e[1;30m\]'; BWHITE='\[\e[1;37m\]'; BRED='\[\e[1;31m\]'; BGREEN='\[\e[1;32m\]'; BBLUE='\[\e[1;34m\]'; BYELLOW='\[\e[1;33m\]'; BMAGENTA='\[\e[1;35m\]'; BCYAN='\[\e[1;36m\]';
BGBLACK='\[\e[40m\]'; BGWHITE='\[\e[1;37m\]'; BGRED='\[\e[41m\]'; BGGREEN='\[\e[1;32m\]'; BGBLUE='\[\e[1;34m\]'; BGYELLOW='\[\e[1;33m\]'; BGMAGENTA='\[\e[1;35m\]'; BGCYAN='\[\e[1;36m\]';
NO_COLOR='\e[0m'; LIGHT_RED='\e[1;31m'; LIGHT_GREEN='\e[1;32m'; LIGHT_BLUE='\e[1;34m'; LIGHT_PURPLE='\e[1;35m'; LIGHT_CYAN='\e[1;36m'; LIGHT_GRAY='\e[0;37m';
# ^ idk what happened but the light colors arent accessed correctly. this is how it should be:
LIGHT_BLACK='\[\e[0;90m\]';
LIGHT_MAGENTA='\[\e[0;95m\]';
LIGHT_GREEN='\[\e[0;92m\]';
LIGHT_WHITE='\[\e[0;97m\]';


# Emoticons ᓚᘏᗢ 
little_dudes=("(ꈍ ꒳ ꈍ✿)*:･ﾟﾟ⭑" "✧♪○ヽ( ᐛ )ﾉ ♩✧♪♬⭑" "ₒ ° ₒ 𓂂(⁍̴̆◡⁍̴̆ )⊃✫･⭑" "✲ﾟ｡.(✿╹◡╹)ﾉ☆.₀:₀⭑");                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
da_kitties=("/ᐠ｡ꞈ｡ᐟ\\ﾉ   " "✧/ᐠ-ꞈ-ᐟ\\ﾉ  " "/ᐠ. ᴗ.ᐟ\\ﾉ  " "/ᐠ ̥ ̣̮ ̥ ᐟ\\ﾉ  " "/ᐠ.｡.ᐟ\\ˎˊ˗ " "/ᐠ.  ̫.ᐟ\\ฅ  " "ฅ/ᐠ･o･ᐟ\\ฅ  " "/ᐠ^._.^ᐟ\\ﾉ ");                                                                                                                                                                                                                                                                                                                                                                                 
sparkles=("⭑･ﾟﾟ･*:༅｡.｡༅:*ﾟ :*:✼✿   " "✧･ﾟ: *✧･ﾟ  ･ﾟ *:･ﾟ✧*:･ﾟ✧" "~ ヾ๑ˊᵕˋ๑◞ ♡ ~ ヾˊᵕˋ๑◞ ♡" "｡ﾟ❁ུ۪ °ₒ 𓂂 ˚ 𓂂 ₒ ° ₒ 𓂂 ˚˖⋆");                                                                                                                                                                                                                                                                                                                                                                                                                                          
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

rand_kitty () {
  #kitty=${da_kitties[$RANDOM %  ${#da_kitties[@]}]} #pick random
  #done with random kitty, too lazy to refactor.
  kitty="/ᐠ. ｡.ᐟ\\\! ˎˊ˗ "
  PS1="\[${WHITE}\][\@ \[${GREEN}\]\w\[${WHITE}\]] \[${LIGHT_MAGENTA}\]${kitty}\[${WHITE}\]\[${NO_COLOR}\]"
}


aliases_n_keybinds () { 

  eval "$(thefuck --alias)"                        # correct last command
  #bind TAB:menu-complete                           # cycle through tab-completes
  bind '"\e[Z": menu-complete-backward'

  alias wherewasi="git log -1 --pretty=%B";
  alias killallstoppedjobs="kill -9 `jobs -ps`";
  alias untar='tar -zxvf ';                         
  alias count='find . -type f | wc -l'             # count files in dir
  alias cheatsheet="cat ~/.cheatsheet"
  alias boss='while [ TRUE ]; do head -n 100 /dev/urandom; sleep .1; done | hexdump -C | grep "ca fe"' #look like ur busy

  #alias cd='cd_then_ls '                           # better cd. if it worked with gls that is.
  #alias cp='rsync -ah --info=progress2'            # better cp
  #alias rm='mv --force -t ~/.local/share/Trash '   # move files to trash rather than delete. doesnt work with rm -rf though. 
  alias vim="/opt/homebrew/bin/vim"
  alias grep="grep --color=auto"
  alias gdb="gdb -q -tui";

  alias p="python";
  alias py="python";
  alias pyt="python";
  alias pyth="python";
  alias vi="vim"
  alias ls="gls -F --color=auto --group-directories-first --time-style=long-iso" # -F gives dirs '/', execs '*', etc
  alias lt='gls --human-readable --size -1 -S --classify'
  alias l="ls";
  alias s="ls";
  alias sl="ls";

  # No more cd ../../../..
  alias ..='cd ..'
  alias ...='cd ../..'
  alias ....='cd ../../..'
  alias .....='cd ../../../..'
  alias ......='cd ../../../../..'

  alias :q='echo You are not editing a file, dummy.'
  alias :wq='echo You are not editing a file, dummy.'


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
colors () {
  export TERM="xterm-256color"
  export CLICOLOR=1
  export LS_COLORS="no=00:fi=00:di=34:ow=34;40:ln=35:pi=30;44:so=35;44:do=35;44:bd=33;44:cd=37;44:or=05;37;41:mi=05;37;41:ex=01;31:*.cmd=01;31:*.exe=01;31:*.com=01;31:*.bat=01;31:*.reg=01;31:*.app=01;31:*.txt=00:*.org=32:*.md=32:*.mkd=32:*.h=32:*.hpp=32:*.c=32:*.C=32:*.cc=32:*.cpp=32:*.cxx=32:*.objc=32:*.cl=32:*.sh=32:*.bash=32:*.csh=32:*.zsh=32:*.el=32:*.vim=32:*.java=32:*.pl=32:*.pm=32:*.py=32:*.rb=32:*.hs=32:*.php=32:*.htm=32:*.html=32:*.shtml=32:*.erb=32:*.haml=32:*.xml=32:*.rdf=32:*.css=32:*.sass=32:*.scss=32:*.less=32:*.js=32:*.coffee=32:*.man=32:*.0=32:*.1=32:*.2=32:*.3=32:*.4=32:*.5=32:*.6=32:*.7=32:*.8=32:*.9=32:*.l=32:*.n=32:*.p=32:*.pod=32:*.tex=32:*.go=32:*.sql=32:*.csv=32:*.sv=32:*.svh=32:*.v=32:*.vh=32:*.vhd=32:*.bmp=33:*.cgm=33:*.dl=33:*.dvi=33:*.emf=33:*.eps=33:*.gif=33:*.jpeg=33:*.jpg=33:*.JPG=33:*.mng=33:*.pbm=33:*.pcx=33:*.pdf=33:*.pgm=33:*.png=33:*.PNG=33:*.ppm=33:*.pps=33:*.ppsx=33:*.ps=33:*.svg=33:*.svgz=33:*.tga=33:*.tif=33:*.tiff=33:*.xbm=33:*.xcf=33:*.xpm=33:*.xwd=33:*.xwd=33:*.yuv=33:*.nef=33:*.NEF=33:*.aac=33:*.au=33:*.flac=33:*.m4a=33:*.mid=33:*.midi=33:*.mka=33:*.mp3=33:*.mpa=33:*.mpeg=33:*.mpg=33:*.ogg=33:*.opus=33:*.ra=33:*.wav=33:*.anx=33:*.asf=33:*.avi=33:*.axv=33:*.flc=33:*.fli=33:*.flv=33:*.gl=33:*.m2v=33:*.m4v=33:*.mkv=33:*.mov=33:*.MOV=33:*.mp4=33:*.mp4v=33:*.mpeg=33:*.mpg=33:*.nuv=33:*.ogm=33:*.ogv=33:*.ogx=33:*.qt=33:*.rm=33:*.rmvb=33:*.swf=33:*.vob=33:*.webm=33:*.wmv=33:*.doc=31:*.docx=31:*.rtf=31:*.odt=31:*.dot=31:*.dotx=31:*.ott=31:*.xls=31:*.xlsx=31:*.ods=31:*.ots=31:*.ppt=31:*.pptx=31:*.odp=31:*.otp=31:*.fla=31:*.psd=31:*.7z=1;35:*.apk=1;35:*.arj=1;35:*.bin=1;35:*.bz=1;35:*.bz2=1;35:*.cab=1;35:*.deb=1;35:*.dmg=1;35:*.gem=1;35:*.gz=1;35:*.iso=1;35:*.jar=1;35:*.msi=1;35:*.rar=1;35:*.rpm=1;35:*.tar=1;35:*.tbz=1;35:*.tbz2=1;35:*.tgz=1;35:*.tx=1;35:*.war=1;35:*.xpi=1;35:*.xz=1;35:*.z=1;35:*.Z=1;35:*.zip=1;35:*.zst=1;35:*.ANSI-30-black=30:*.ANSI-01;30-brblack=01;30:*.ANSI-31-red=31:*.ANSI-01;31-brred=01;31:*.ANSI-32-green=32:*.ANSI-01;32-brgreen=01;32:*.ANSI-33-yellow=33:*.ANSI-01;33-bryellow=01;33:*.ANSI-34-blue=34:*.ANSI-01;34-brblue=01;34:*.ANSI-35-magenta=35:*.ANSI-01;35-brmagenta=01;35:*.ANSI-36-cyan=36:*.ANSI-01;36-brcyan=01;36:*.ANSI-37-white=37:*.ANSI-01;37-brwhite=01;37:*.log=01;32:*~=01;32:*#=01;32:*.bak=01;33:*.BAK=01;33:*.old=01;33:*.OLD=01;33:*.org_archive=01;33:*.off=01;33:*.OFF=01;33:*.dist=01;33:*.DIST=01;33:*.orig=01;33:*.ORIG=01;33:*.swp=01;33:*.swo=01;33:*.v=01;33:*.gpg=34:*.gpg=34:*.pgp=34:*.asc=34:*.3des=34:*.aes=34:*.enc=34:*.sqlite=34"
  GREP_COLORS='sl=49;39:cx=49;39:mt=49;31;1:fn=49;32:ln=49;33:bn=49;33:se=1;36'
}
file_shit () { # delete dirs that the OS keeps recreating
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      if [ -d "~/Videos" ];     then rm -rf "~/Videos";     fi;
      if [ -d "~/Music" ];      then rm -rf "~/Music";      fi;
      if [ -d "~/Pictures" ];   then rm -rf "~/Pictures";   fi;
      if [ -d "~/Wallpapers" ]; then rm -rf "~/Wallpapers"; fi;
    else
      if [[ "$OSTYPE" == "darwin"* ]]; then
        if [ -d "~/Movies" ]; then rm -rf "~/Movies"; fi;
        if [ -d "~/Public" ]; then rm -rf "~/Public"; fi;
      fi
    fi
}
misc_options () { 
  export SSH_ASKPASS=;
  export PYTHONSTARTUP=~/.python;
  export KEY_MODELLER=MODELIRANJE;
  export ROSETTA3=/research/jagodzinski/rosetta/rosetta_src_2020.08.61146_bundle/main/source/bin
  shopt -s checkwinsize;
  shopt -s histappend;
  export HISTCONTROL=ignoreboth;
  export HISTSIZE=10000
  
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
path_init () {
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH=/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

  if [[ "$OSTYPE" == "darwin"* ]]; then
    pathadd /opt/homebrew/bin
    pathadd /opt/homebrew/sbin
    pathadd /Users/slop/miniconda3/bin
    pathadd /Users/slop/miniconda3/condabin
    pathadd /Library/Frameworks/Python.framework/Versions/3.6/bin
  fi;

  clean_path;
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
  # dont even bother, just crashes
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /Users/slop/miniconda3/lib/python3.8/site-packages//powerline/bindings/bash/powerline.sh
  
}
source_if_exists () { if [ -f "$1" ]; then . "$1"; fi; }
clean_path () { export PATH=$(echo "$PATH" | awk -F: '{for (i=1;i<=NF;i++) { if ( !x[$i]++ ) printf("%s:", $i); }}'); }
function join_by { local d=${1-} f=${2-}; if shift 2; then printf %s "$f" "${@/#/$d}"; fi; }


# Main: 
path_init;
conda_init;
aliases_n_keybinds;
misc_options;
file_shit;
colors;
#complete -d cd #only autocomplete directories
export PROMPT_COMMAND=rand_kitty

# Only do this in the first terminal opened
termsOpen=$(who | grep 'ttys' | wc -l)
if (( $termsOpen < 2 )); then
  if [[ "$OSTYPE" == "darwin"* ]]; then 
    neofetch
  fi
fi













## this needs to be before the alias
## or it gives a weird error 
#function cd_then_ls() {
#  DIR="$*";
#  # if no DIR given, go home
#  if [ $# -lt 1 ]; then DIR=$HOME; fi;
#  cd "${DIR}" && ls -F --color=auto
#}
#
