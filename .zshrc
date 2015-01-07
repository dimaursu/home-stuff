# The following lines were added by compinstall
zstyle :compinstall filename '/home/dimon/.zshrc'

autoload -Uz compinit
compinit

source ~/.common.sh

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
setopt appendhistory extendedglob notify
setopt NO_BEEP
bindkey -v
# End of lines configured by zsh-newuser-install
#
# Powerline
. /usr/share/zsh/site-contrib/powerline.zsh



[ -s "/home/dimon/.kre/kvm/kvm.sh" ] && . "/home/dimon/.kre/kvm/kvm.sh" # Load kvm
