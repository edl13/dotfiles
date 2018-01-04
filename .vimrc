set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mlp6/vim-lsdyna'
call vundle#end()  
filetype plugin indent on

syntax on

set laststatus=2
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set expandtab
set nofoldenable

colorscheme ron

map <silent> <C-n> :NERDTreeFocus<CR>

autocmd BufRead,BufNewFile *.dyn set filetype=lsdyna
autocmd BufRead,BufNewFile *.k set filetype=lsdyna
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.shge set filetype=sh

let g:pymode_python = 'python3'
