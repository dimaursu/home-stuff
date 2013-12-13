# The following lines were added by compinstall
zstyle :compinstall filename '/home/dimon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
#
# Jump script
export MARKPATH=$HOME/.marks
jump() {
    cd -P $MARKPATH/"$1" 2>/dev/null || echo "No such mark: $1"
}
mark() {
    mkdir -p $MARKPATH; ln -s "$(pwd)" $MARKPATH/"$1"
}
unmark() {
    rm -i $MARKPATH/"$1"
}
marks() {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
# end of jump script

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
# use tmux with 256 color support
alias tmux="tmux -2"
alias rctags="ctags -R . \`bundle list --paths\`"
alias j=jump

PATH=$PATH:$HOME/.meteor
PATH=$PATH:$HOME/.qemu/bin
source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh
chruby ruby-2.0
. /usr/share/zsh/site-contrib/powerline.zsh
