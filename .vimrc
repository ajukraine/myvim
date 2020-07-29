" Turn off compatibility mode
set nocompatible

let mapleader = ","

" Vim packages
set packpath=~/.myvim

"" LanguageClient
" git clone https://github.com/autozimu/LanguageClient-neovim
nmap <leader>d <Plug>(lcn-definition)
nmap <leader>h <Plug>(lcn-hover)
nmap <leader>e <Plug>(lcn-explain-error)

"" Ionide
" git clone https://github.com/ionide/Ionide-vim

" Turn all: 'plugin', 'indent' and 'detection'
filetype plugin indent on
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
set laststatus=2

" Use spaces instead of tabs
set expandtab

" Disable soft wrap
set nowrap

" Disable physical wrap
set textwidth=0
set wrapmargin=0

" set autoindent
" set tabstop=2
" set shiftwidth=2
set backspace=2
set scrolloff=5

set termguicolors

colorscheme monokai-bold

set number relativenumber
set cursorline

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
