" Turn off compatibility mode
set nocompatible

" Map <leader> key to <Space>
let mapleader = " "

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

" Enable mouse
set mouse=a

set hidden

" Enable completion in command mode
set wildmenu

"" Statusline
" If 'lightline' is not available, then fallback to built-in status line
"
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

"" Lightline config
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" Use spaces instead of tabs, set default tab width
set expandtab
set shiftwidth=4
set softtabstop=4

" Disable physical wrapping
set textwidth=0
set wrapmargin=0

" Enable <Backspace>
set backspace=2

" Set bottom and top padding
set scrolloff=5

if $COLORTERM == 'truecolor'
    set termguicolors
endif

if has('nvim')
  colorscheme horizon
else
  " horizon theme doesn't work properly in Vim
  colorscheme monokai-bold
endif

set number relativenumber

set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Set continuous horizontal split line
set fillchars+=vert:│

" Misc key bindings
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>n :bnext<CR>
