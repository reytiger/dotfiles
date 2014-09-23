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

" # of spaces for tabs and backspaces. May force tab alignment
set softtabstop=4

" use spaces as tabs
set expandtab

" move between vim windows with ctrl-hjkl
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" more mappings for resizing windows
nmap <C--> <C-w>-
nmap <C-_> <C-w>_
nmap <C-=> <C-w>=

nmap <M->> <C-w>10>
nmap <M-<> <C-w<lt>10>

" make backspace behave like morst applications
set backspace=2
