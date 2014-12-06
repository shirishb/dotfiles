colorscheme darkblue

syntax on
set mouse=a
set nocompatible
set backspace=indent,eol,start
"set backspace=2

set number
set numberwidth=4
set ruler
set splitright
set splitbelow
set title
set nowrap

set autoindent
set smartindent
set cindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set showmatch "Highlights matching brackets in programming languages

" Search settings
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" highlight tabs and trailing spaces
" set list
set listchars=tab:>-,trail:·
" set listchars=tab:>-,trail:-
set list

set colorcolumn=80

" remove trailing spaces
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e

"--- Taglist plugin changes
filetype on
filetype plugin on
" Taglist needs exuberant ctags
let Tlist_Ctags_Cmd='/opt/local/bin/ctags'
let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1

"-- Default tag files
set tags+=./tags;/
set tags+=$HOME/.vim/tags/python27.tags

"--- The following commands make the navigation keys work like standard editors
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
"--- Ends navigation commands

map ; :

