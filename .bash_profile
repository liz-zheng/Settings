export JAVA_HOME=$(/usr/libexec/java_home)
export CLICOLOR=1
alias ls='ls -GFh'
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/scripts
export TMP=${TMP:-/tmp}
export TMPDIR=${TMPDIR:-/tmp}
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
alias proj='cd /Users/mzheng/git/'
alias gop='cd /Users/mzheng/go/src'
alias ml='ssh b.ml-usw2-01.h.km.playstation.net'
alias e1='ssh b.e1-np.kmb.sonynei.net'
alias p1='ssh b.p1-np.kmb.sonynei.net'
alias p2='ssh b.p1-np-usw2-01.h.km.playstation.net'
alias sp-int='ssh b.sp-int-usw2-01.h.km.playstation.net'
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
export PS1="\[${BOLD}${COLOR_LIGHT_GREEN}\]\u\[$COLOR_LIGHT_CYAN\]@\[$COLOR_LIGHT_CYAN\]\h\[$COLOR_WHITE\]: [\[$GREEN\]\w\[$COLOR_WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" - \")\[$COLOR_LIGHT_BLUE\]\$(parse_git_branch)\[$COLOR_WHITE\]] \$ \[$RESET\]"
