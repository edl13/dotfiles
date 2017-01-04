set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'mlp6/vim-lsdyna'
Bundle 'flazz/vim-colorschemes'

" vim-plugin-powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set t_Co=256

syntax on
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set expandtab
filetype plugin indent on
set background=dark
set nofoldenable
colorscheme vividchalk

autocmd BufRead,BufNewFile *.dyn set filetype=lsdyna
autocmd BufRead,BufNewFile *.k set filetype=lsdyna
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.shge set filetype=sh
