 " install vundle git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible " explicitly get out of vi-compatible mode
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " let Vundle manage Vundle
    " required!
    Plugin 'gmarik/Vundle.vim'

    " My Bundles here:
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-haml'
    Plugin 'mustache/vim-mustache-handlebars'
    "Plugin 'tpope/vim-rake'
    "Plugin 'tpope/vim-bundler'
    "Plugin 'tpope/vim-dispatch'
    Plugin 'szw/vim-tags'
    Plugin 'Lokaltog/vim-easymotion'
    "Plugin 'tpope/vim-rails.git'
    Plugin 'tpope/vim-endwise'
    Plugin 'tpope/vim-markdown'
    Plugin 'scrooloose/syntastic'

    " enable it when doing php stuff
    Plugin 'joonty/vdebug.git'
    Plugin 'scrooloose/nerdtree'
    Plugin 'kien/ctrlp.vim'
    Plugin 'joonty/vim-sauce.git'
    Plugin 'rking/ag.vim'

    Plugin 'mattn/emmet-vim'

    Plugin 'myusuf3/numbers.vim'
    Plugin 'mhinz/vim-signify'
    Plugin 'Yggdroot/indentLine'
    Plugin 'gorodinskiy/vim-coloresque'

    Plugin 'Valloric/YouCompleteMe'
    " Track the engine.
    Plugin 'SirVer/ultisnips'
    " Snippets are separated from the engine. Add this if you want them:
    let g:UltiSnipsExpandTrigger="<c-u>"
    Plugin 'honza/vim-snippets'
    Plugin 'godlygeek/tabular'

    Plugin 'cbracken/vala.vim'
    Plugin 'groenewege/vim-less'
    Plugin 'othree/xml.vim'
    Plugin 'stephpy/vim-yaml'
    Plugin 'evidens/vim-twig'
    " templating engine in java
    "Plugin 'lepture/vim-velocity'


    " colorschemes
    Plugin 'altercation/vim-colors-solarized'

    call vundle#end()
    filetype plugin indent on  "required

    let g:syntastic_ruby_checkers = ['mri', 'rubocop']
"le powerline
    set laststatus=2
    let g:Powerline_symbols = 'fancy'
" Easy motion
    let g:EasyMotion_leader_key = ','
" CTRL + E to expand emmet expressions
    let g:user_emmet_expandabbr_key = '<c-o>'
 " General {
    " make syntax highlithning faster
    "set lazyredraw
    "set synmaxcol=90
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
set background=dark " we plan to use a dark background
set encoding=utf-8
set termencoding=utf-8
"set cm=blowfish " use set key=ololo to ecrypt the file.
syntax on


set nobackup
set noswapfile
nnoremap ; :
nmap <silent> m :NERDTreeToggle<CR>

"cursor to appear in its previous position after you open a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" options for vim-tags
let g:vim_tags_auto_generate = 1

if has("gui_running")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
    set guioptions-=T
    set guioptions-=l
    set guioptions-=r
    set guioptions-=b
endif
autocmd Filetype ruby,yml,feature,js,html setlocal ts=2 sts=2 sw=2 et
autocmd FileType tex setlocal spell spelllang=en_us
au BufNewFile,BufRead *.ejs set filetype=mustache

" do not hide latex symbols
let g:tex_conceal = ""
" set spell spelllang=en_us " I have to try this on a ruby project

" remove trailing spaces at save
autocmd BufWritePre *.* :%s/\s\+$//e

set cursorline
set colorcolumn=80

" disable all freaking bells
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

nmap =j :%!python -m json.tool<CR>

command! UnMinify call UnMinify()
command! HashRocket call HashRocket()

function! UnMinify()
    %s/{\ze[^\r\n]/{\r/
    %s/){/) {/g
    %s/};\?\ze[^\r\n]/\0\r/g
    %s/;\ze[^\r\n]/;\r/g
    %s/[^\s]\zs[=&|]\+\ze[^\s]/ \0 /g
    normal ggVG=
endfunction

function! HashRocket()
    " converts the old ruby hash syntax to the new one
    " a = { :b => 3 } to a = { b: 3}
    %s/:\([^=,'"]*\) =>/\1:/g
endfunction

" force 256 colors mode
set t_Co=256                        " force vim to use 256 colors
let g:solarized_termcolors=256      " use solarized 256 fallback
" let g:solarized_contrast = "high"
" use fancy intend guides
let g:indentLine_char = "┆"
"ʬ

" make you complete me use tags files
 let g:ycm_collect_identifiers_from_tags_files = 0
" use keyword of programming languages from syntax files
" let g:ycm_seed_identifiers_with_syntax = 1
set mouse=a
set shell=$SHELL
