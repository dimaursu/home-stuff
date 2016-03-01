#
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.common.sh

### funny useless things ###
#files=(/usr/share/cows/*);
#fortune | cowsay -f `echo ${files[$((RANDOM%${#files}))]}`
#echo -e "${RED}Receiving transmission!"
#music=(~/.soundfx/*);
#play `echo ${music[$((RANDOM%3))]}` &> /dev/null
#echo -e "${CYAN}Tell me what to do, master${NC}"

powerline-daemon --quiet
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh

