syntax on
set number
set nocompatible              " be iMproved, required
filetype off                  " required

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala,js let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>'"'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Common functionalities
Plugin 'tomtom/tcomment_vim'
Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s2)


" Javascript
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
set smartindent
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
map <c-f> :call JsBeautify()<cr>


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
