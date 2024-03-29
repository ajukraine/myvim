" Turn off compatibility mode
set nocompatible

" Map <leader> key to <Space>
let mapleader = " "

" Vim packages
let &packpath = fnamemodify(resolve(expand('<sfile>:p')), ':h')

"" LanguageClient
" git clone https://github.com/autozimu/LanguageClient-neovim
" cd LanguageClient-neovim
" bash install.sh
nmap <leader>d <Plug>(lcn-definition)
nmap <leader>h <Plug>(lcn-hover)
nmap <leader>e <Plug>(lcn-explain-error)

" Commentary
nmap <leader>cc <Plug>CommentaryLine

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

set signcolumn=yes

if $COLORTERM == 'truecolor' && exists('+termguicolors')
    set termguicolors
    colorscheme horizon
else
    " Fallack to safe colorscheme, that works in non-gui Vim and simpler
    " terminals
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
