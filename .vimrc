" Turn off compatibility mode
set nocompatible

" Turn on syntax highlighting
syntax on

set mouse=a

set hidden

"" Statusline
" %f - path to the file
" %y - type of the file, lile [vim]
" %h - writes [help], if this is help buffer
" %m - modified flag [+]
" %r - readonly flag [RO]
" %l - line number
" %c - column number
" %V - vertical column number
" %P - percentage through file
set statusline=%<%f\ %y%h%m%r%=%-14.(%l,%c%V%)\ %P

" Use spaces instead of tabs
set expandtab

set tabstop=2
set shiftwidth=2
set backspace=2
set scrolloff=5

colorscheme pablo

set number
hi LineNr ctermfg=8

let mapleader = ","
nnoremap <leader>w :w<CR>
