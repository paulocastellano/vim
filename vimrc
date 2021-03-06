" vimrc
"
" Created by InFog - Evaldo Junior <evaldojuniorbento@gmail.com>
" Inspired by a lot of other vimrc files out there
"
" https://github.com/InFog/meuvim
"
" http://evaldojunior.com

set nocompatible
filetype off
set modelines=0
let mapleader=","

" Vundle is the bundle manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" And now, some bundles
"
" Options to delete, select, copy, etc inside tags and other block symbols
Bundle 'tpope/vim-surround'

" The best git wrapper, ever (Says the author)
Bundle 'tpope/vim-fugitive'

" HTML tags and other improvements for '%'
Bundle 'vim-scripts/matchit.zip'

" Snippets, this is my fork to add some stuff
Bundle 'InFog/snipmate.vim'

" Lots of languages: https://github.com/sheerun/vim-polyglot
Bundle 'sheerun/vim-polyglot'

" Improves colors for terminals
Bundle 'godlygeek/csapprox'

" Relative line numbers in normal mode and absolute in insert mode (magic)
Bundle 'myusuf3/numbers.vim'

" Show trailing spaces
Bundle 'bronson/vim-trailing-whitespace'

" Some colorschemes
Bundle 'jnurmine/Zenburn'
Bundle 'NLKNguyen/papercolor-theme'

"
" And now some bundles that need additional configs
"

" Shows added, modified and deleted lines on git repos
Bundle 'airblade/vim-gitgutter'
let g:gitgutter_max_signs=10000

" Tagbar to show the file's tags (depends on exuberant-ctags)
Bundle 'majutsushi/tagbar'
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
let g:tagbar_compact=1
let g:tagbar_show_linenumbers=2

" PHPtagbar : remember to run cd ~/.vim/bundle/tagbar-phpctags.vim && make
Bundle 'vim-php/tagbar-phpctags.vim'
nnoremap <leader>l :TagbarToggle<CR>

" Airline : Nice statusbar, shows a lot of stuff and some git info
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
let g:airline_theme='papercolor'
let g:airline_powerline_fonts=0
let g:airline_detect_paste=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#tabline#enabled=1

" Syntastic : Checks syntax errors and some other stuff like codestyle
Bundle 'scrooloose/syntastic'
let g:syntastic_php_checkers=['php']
let g:syntastic_python_checkers=['pep8', 'pylint']
let g:syntastic_python_pep8_args='--ignore=E501'
" Example
" let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

" PHPQATools
Bundle 'joonty/vim-phpqa'
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0
let g:phpqa_codecoverage_autorun = 0
nnoremap <leader>md :Phpmd<CR>
vnoremap <leader>md :Phpmd<CR>

" VDebug : DBGP (xdebug and others)
Bundle 'joonty/vdebug'
let g:vdebug_options = {'server': '0.0.0.0'}

" VDebug for xdebug (PHP) (Add the following lines to php.ini)
" IMPORTANT: This extension still requires Python2. Use Vim 7.x or NeoVim.
" xdebug.remote_autostart = On
" xdebug.remote_enable = On
" xdebug.remote_host = localhost
" xdebug.remote_port = 9000

" CtrlP, a fuzzy finder
Bundle 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<leader>f'
set wildignore+=vendor/*

" PHP Completion Daemon
" Bundle 'lvht/phpcd.vim'

"
" And now some default Vim options
"
syntax enable

" Persistent undo
if has('persistent_undo')
    set undodir=~/.vimundo      " Dir with undo files
    set undofile                " Persistent undo
    set undolevels=1000
    set undoreload=10000
endif

set nobackup
set noswapfile      " Do not use those annoying swap files

set hidden          " Allow hiding not saved buffers

set encoding=utf-8
set showmode        " Display current mode
set wildmenu        " Allows using tab for vim commands
set nu              " line numbers
set ai              " Auto indentation
set ts=4            " 4 spaces for tab
set sw=4            " 4 spaces for tab
set softtabstop=4   " Backspace also respects tabs with 4 spaces
set et              " No tabs, please, use spaces (no flame wars here, please, okthanksbye)
set ruler           " Cursors position
set cursorline      " Highlights line under cursor
set laststatus=2    " Statusbar is always there
" set ttyfast
set lazyredraw
set t_BE=           " disabling the bracketed paste (Vim 8+)
set backspace=indent,eol,start  " Enabling backspace like any other editor

set clipboard=unnamed

set autoread        " Reloads files that where updated after opening them in Vim

"set tw=80           " text width
"set colorcolumn=81  " color for the 80th column
set incsearch       " incremental search
set hlsearch        " Highlight search :)
set ignorecase      " Ignore case for searching
set smartcase       " If your search has upcase letters, do not ignore case

" Maps, shortcuts, etc
"
" Cleaning search highlight
nmap <silent> <leader>/ :nohlsearch<CR>

" File explorer
let g:netrw_bufsettings = 'noma nomod rnu nobl nowrap ro'
map <leader>t :Explore<CR>
map <leader>T :split<CR> :Explore<CR>

" Arrows? Nope. (If you want to have arrows just remove the lines below)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Want some :help?
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Maps ; to :
nnoremap ; :

" I use jj as ESC, if you want ESC to behave the vim way, remove the lines below
inoremap jj <ESC>
inoremap <ESC> <nop>

" Tabs
nmap <silent> tn :tabnew<CR>
nmap <silent> tc :tabclose<CR>
nmap <silent> tq :tabclose<CR>

" Splits
nmap <silent> <leader>s :split<CR>
nmap <silent> <leader>S :vsplit<CR>

" keep the selection after indentation using << and >>
vnoremap < <gv
vnoremap > >gv

" spell check in Portuguese or English
map <leader>spell :set spell spelllang=pt,en<CR>

:filetype plugin on
:filetype plugin indent on

" To remove trailing spaces
nnoremap <leader>w :%s/\s\+$//<CR>

" To you want nice colors on your terminal?
" Add the following to your bashrc (or the file for your shell)
" export TERM="xterm-256color"

" Some nice colors
set background=light
colorscheme PaperColor

" Overwriting options for different languages

" Using PHP syntax for 'thtml' files.
au BufNewFile,BufRead *.thtml setfiletype php

" Markdown syntax for 'md' files.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd Filetype markdown setlocal colorcolumn=80

" Ruby
autocmd Filetype ruby setlocal ts=2 sw=2 softtabstop=2

" Tubaina
autocmd Filetype tubaina setlocal colorcolumn=75
