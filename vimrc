syntax on
set number
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Common functionalities
Bundle "sudar/comments.vim"

" Javascript
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
set smartindent
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'


Bundle 'Raimondi/delimitMate'
imap <C-c> <CR><Esc>O

"DO: npm install -g jshint
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1

" Python
Bundle 'klen/python-mode'
let g:pymode_rope = 1
let g:pymode_doc = 1
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes"
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

"html/css
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-ragtag'
Bundle 'hail2u/vim-css3-syntax'
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
