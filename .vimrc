set encoding=utf-8

syntax enable
colorscheme monokai

set cmdheight=2
set nocompatible
set backspace=indent,eol,start

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/echodoc.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()

filetype plugin indent on

let g:neocomplete#data_directory = "~/.vim/tmp/swap"
let g:neocomplete#enable_at_startup = 1

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.go = '[^.[:digit:] *\t]\.\w*'

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

let mapleader = ","
nmap <F8> :TagbarToggle<CR>