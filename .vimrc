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
    "Plugin 'tpope/vim-rake'
    "Plugin 'tpope/vim-bundler'
    "Plugin 'tpope/vim-dispatch'
    Plugin 'szw/vim-tags'
    Plugin 'Lokaltog/vim-easymotion'
    "Plugin 'tpope/vim-rails.git'
    Plugin 'tpope/vim-endwise'
    Plugin 'scrooloose/syntastic'
    Plugin 'janko-m/vim-test'

    " enable it when doing php stuff
    Plugin 'joonty/vdebug.git'
    Plugin 'scrooloose/nerdtree'
    Plugin 'kien/ctrlp.vim'
    Plugin 'rking/ag.vim'

    Plugin 'mattn/emmet-vim'

    Plugin 'myusuf3/numbers.vim'
    Plugin 'mhinz/vim-signify'

    Plugin 'Valloric/YouCompleteMe'
    " Track the engine.
    Plugin 'SirVer/ultisnips'
    " Snippets are separated from the engine. Add this if you want them:
    let g:UltiSnipsExpandTrigger="<c-u>"
    Plugin 'honza/vim-snippets'
    Plugin 'godlygeek/tabular'

    " syntax highligthning plugins
    Plugin 'tpope/vim-markdown'
    Plugin 'tpope/vim-haml'
    Plugin 'mustache/vim-mustache-handlebars'
    Plugin 'cbracken/vala.vim'
    Plugin 'elixir-lang/vim-elixir'
    Plugin 'groenewege/vim-less'
    Plugin 'othree/xml.vim'
    Plugin 'stephpy/vim-yaml'
    Plugin 'evidens/vim-twig'
    Plugin 'iakio/smarty3.vim'
    Plugin 'kchmck/vim-coffee-script'
    " templating engine in java
    "Plugin 'lepture/vim-velocity'
    Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}



    " colorschemes
    Plugin 'altercation/vim-colors-solarized'

    call vundle#end()

    let g:syntastic_ruby_checkers = ['mri', 'rubocop']
"le powerline
    set laststatus=2
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
"set cryptmethod=blowfish " use set key=ololo to ecrypt the file.
syntax enable


set nobackup
set noswapfile
nnoremap ; :
nmap <silent> m :NERDTreeToggle<CR>

" vim test shortcuts
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

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
autocmd Filetype ruby,yml,feature,js,coffee,html setlocal ts=2 sts=2 sw=2 et
autocmd Filetype php setlocal ts=4 sts=0 sw=4  noexpandtab
au BufNewFile,BufRead *.ejs set filetype=mustache
au BufRead,BufNewFile *.tpl set filetype=smarty3

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

function! RubyNewHashRocket()
    %s/:\([^ ]*\)\(\s*\)=>/\1:/g
endfunction

function! RubyOldHashRocket()
    %s/:\([^ ]*\)\(\s*\)=>/\1:/g
endfunction

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" force 256 colors mode
set t_Co=256                        " force vim to use 256 colors
let g:solarized_termcolors=256      " use solarized 256 fallback
let g:solarized_contrast = "high"

" make you complete me use tags files
 let g:ycm_collect_identifiers_from_tags_files = 0
" use keyword of programming languages from syntax files
 let g:ycm_seed_identifiers_with_syntax = 1
set mouse=a
set shell=$SHELL
