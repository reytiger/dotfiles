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
set tabstop=2

" # of spaces to indent using cindent, >>, etc.
set shiftwidth=2

" # of spaces for tabs and backspaces. May force tab alignment
set softtabstop=2

" use spaces as tabs
set expandtab

" move between vim windows with ctrl-hjkl
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" more mappings for resizing windows TODO: make better
nmap <C--> <C-w>-
nmap <C-_> <C-w>_
nmap <C-=> <C-w>=

nmap <M->> <C-w>10>
nmap <M-<> <C-w<lt>10>

" make backspace behave like most applications
set backspace=2

" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow 

" Indentation for ruby
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

runtime ftplugin/man.vim
