" install vundle => git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" run in vim 'BundleInstall'  
    set nocompatible " explicitly get out of vi-compatible mode
    set background=dark " we plan to use a dark background
    set encoding=utf-8
    set termencoding=utf-8
    set cm=blowfish
    syntax on
    syntax sync minlines=256
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle
    " required! 
    Bundle 'gmarik/vundle'

    " My Bundles here:
    "
    " original repos on github
    "Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-haml'
    "Bundle 'tpope/vim-dispatch'
    "Bundle 'szw/vim-tags'
    "Bundle 'Lokaltog/vim-easymotion'
    "Bundle 'tpope/vim-rails.git'
    Bundle 'kien/ctrlp.vim'
    Bundle 'myusuf3/numbers.vim'
    Bundle 'tpope/vim-endwise'
    Bundle 'tpope/vim-markdown'
    Bundle 'scrooloose/nerdtree'
    "Bundle 'mattn/emmet-vim'
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'Yggdroot/indentLine'
    Bundle 'rking/ag.vim'
    Bundle 'adimit/prolog.vim'
    Bundle 'cbracken/vala.vim'
    Bundle "lepture/vim-velocity"

    " colorschemes
    Bundle 'altercation/vim-colors-solarized'

"le powerline
"    set laststatus=2
    let g:Powerline_symbols = 'fancy'
" Easy motion
    "let g:EasyMotion_leader_key = ','
    "let g:user_emmet_expandabbr_key = '<c-e>'
 " General {
     filetype off
     filetype plugin indent on " load filetype plugins/indent settings
     "set autochdir " always switch to the current file directory
     set backspace=indent,eol,start " make backspace a more flexible
     set fileformats=unix,dos,mac " support all three, in this order
     set mouse=a " use mouse everywhere
     set incsearch " BUT do highlight as you type
     set number " turn on line numbers
     set numberwidth=3 " We are good up to 999 lines
     set ruler " Always show current positions along the bottom
     "set cf " Error jumping
     "set scrolloff=10 " Keep 10 lines (top/bottom) for scope
     set showmatch " show matching brackets
     "set sidescrolloff=10 " Keep 5 lines at the size
     set expandtab " no real tabs please!
     set formatoptions=rq " Automatically insert comment leader on return,
     set ignorecase " case insensitive by default
     set infercase " case inferred by default
     set nowrap " do not wrap line
     set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
     set smartcase " if there are caps, go case-sensitive
     set shiftwidth=4 " auto-indent amount when using cindent,
                       " >>, << and stuff like that
     set softtabstop=4 " when hitting tab or backspace, how many spaces
                        "should a tab be (see expandtab)
     set list listchars=trail:·,tab:·· "tailing space
     set smarttab " real tabs should be 2, and they will show with
     set autoindent
     " autowrap the mot*erf*king line
     set tw=80
 " }

 " Folding {
     set foldenable " Turn on folding
     set foldmarker={,} " Fold C style code (only use this as default
     set foldmethod=marker " Fold on the marker

"}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set pastetoggle=<F2>

set nobackup
set noswapfile
nnoremap ; :
nmap <silent> m :NERDTreeToggle<CR>

"cursor to appear in its previous position after you open a file
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"use Prolog syntax highlightning for .pro files
au BufRead,BufNewFile *.pro set filetype=prolog

" ruby should be indented by 2 spaces, not 4
autocmd Filetype ruby,yml,feature setlocal ts=2 sts=2 sw=2 et
autocmd FileType tex setlocal spell spelllang=en_us

set cursorline
set colorcolumn=80

" disable all freaking bells
"set noeb vb t_vb=
"au GUIEnter * set vb t_vb=

" force 256 colors mode
set t_Co=256                        " force vim to use 256 colors
let g:solarized_termcolors=256      " use solarized 256 fallback
let g:solarized_contrast = "high"
" use fancy intend guides
let g:indentLine_char = "┆"
"ʬ

" make you complete me use tags files
let g:ycm_collect_identifiers_from_tags_files = 1
"let g:vim_tags_use_ycm = 1
" use keyword of programming languages from syntax files
"let g:ycm_seed_identifiers_with_syntax = 1
set mouse=a
