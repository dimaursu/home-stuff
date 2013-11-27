#
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
### Colors ###
GREP_OPTIONS="--color=always"
GREP_COLORS="ms=01;37:mc=01;37:sl=:cx=01;30:fn=35:ln=32:bn=32:se=36"
RED='\e[1;31m'
BLUE='\e[1;34m'
CYAN='\e[1;36m'
NC='\e[0m'              # No Color

### funny useless things ###
echo -e "${CYAN}This is BASH ${RED}${BASH_VERSION%.*}\
     ${CYAN} - DISPLAY on ${RED}$DISPLAY${NC}\n"
                               date
#files=(/usr/share/cows/*);
#fortune | cowsay -f `echo ${files[$((RANDOM%${#files}))]}` 
#echo -e "${RED}Receiving transmission!"
#music=(~/.soundfx/*);
#play `echo ${music[$((RANDOM%3))]}` &> /dev/null
#echo -e "${CYAN}Tell me what to do, master${NC}"


### New Variables ###
export GNUSTEP_USER_ROOT="${HOME}/GNUstep"
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
#export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
# activate this when compiling GIMP
#export PYTHONDOCS=/usr/share/doc/python/html/
#export PYTHON=python2
export EDITOR="vim"
export HISTTIMEFORMAT="%d-%b %r "
export TERM="screen-256color"

### Aliases ###
alias mkdir='mkdir -p'
alias ls='ls --color=auto'
alias ctags_for_rails='ctags -R --exclude=.git --exclude=log *'
alias tmux='tmux -2'

### New PATH's ###
PATH=$PATH:$HOME/.meteor
source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh
chruby ruby-2.0

source  /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
