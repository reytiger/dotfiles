" Always show filename in bottom bar
set ls=2

" Syntax highlighting for programming
syntax on

" Go up a directory if there is no makefile in the current one
let &makeprg = 'if [ -f Makefile ]; then make; else make -C ..; fi'

" Enable filetype specific indentation
filetype plugin indent on

" Set the indent style for switch cases to auto shitf themselves left
set cinoptions=:0

" Show line numbers
set number

" Realtime search
set incsearch

" smart intdent
set smartindent

" # of spaces that a tab counts as
set tabstop=4

" # of spaces to indent using cindent, >>, etc.
set shiftwidth=4

" use spaces as tabs
set expandtab
