HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000


# Jump script
export MARKPATH=$HOME/.marks
function jump {
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark {
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark {
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
# end of jump script

### New Variables ###
export GNUSTEP_USER_ROOT="${HOME}/GNUstep"
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
#export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
#export PYTHONDOCS=/usr/share/doc/python/html/
# activate this when compiling GIMP
#    export PYTHON=python2
#    export PREFIX="$HOME/.bin"
#    export PATH="$PATH:$PREFIX/bin"
#    export PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH"
#    export LD_LIBRARY_PATH="$PREFIX/lib:$LD_LIBRARY_PATH"
#export ACLOCAL_FLAGS="-I $PREFIX/share/aclocal $ACLOCAL_FLAGS"
# end gimp stuff
export EDITOR="vim"
export HISTTIMEFORMAT="%d-%b %r "
export TERM="xterm-256color"
### Colors ###

GREP_OPTIONS="--color=always"
GREP_COLORS="ms=01;37:mc=01;37:sl=:cx=01;30:fn=35:ln=32:bn=32:se=36"
RED='\e[1;31m'
BLUE='\e[1;34m'
CYAN='\e[1;36m'
NC='\e[0m'              # No Color

export RUBY_GC_HEAP_INIT_SLOTS=2000000
export RUBY_HEAP_FREE_MIN=20000
export RUBY_GC_MALLOC_LIMIT=300000

### Aliases ###
alias cal='cal -m'
alias open='xdg-open'
alias mkdir='mkdir -p'
alias ls='ls --color=auto'
# use tmux with 256 color support
alias tmux="tmux -2"
alias ctags_for_rails='ctags -R --exclude=.git --exclude=log *'
alias rctags="ctags -R . \`bundle list --paths\`"
alias j=jump

PATH=$PATH:$HOME/.meteor
PATH=$PATH:$HOME/.qemu/bin
PATH=$PATH:$HOME/.android-sdk/tools/
PATH=$PATH:$HOME/.npm/bin
PATH=$PATH:$HOME/.composer/vendor/bin
PATH=$PATH:$HOME/.luarocks/bin/

source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh
chruby ruby-2.2

export PYTHONPATH=:/usr/lib/python2.7/site-packages/:/usr/lib/python3.4/site-packages

