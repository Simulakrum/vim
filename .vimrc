set nocompatible              " required
filetype off                  " required
set encoding=utf-8
set nu
set visualbell t_vb=
set novisualbell
set backspace=2


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'mitsuhiko/vim-jinja'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

colors zenburn

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all




map <F3> :NERDTreeToggle<CR>