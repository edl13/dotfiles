set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'mlp6/vim-lsdyna'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'flazz/vim-colorschemes'
" Bundle 'scrooloose/syntastic'
" Bundle 'LaTeX-Box-Team/LaTeX-Box'
" Bundle 'tpope/vim-fugitive'
" Bundle 'klen/python-mode'
" Bundle 'davidhalter/jedi-vim'
" Bundle 'airblade/vim-gitgutter'
" Bundle 'tpope/vim-surround'
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'tpope/vim-vividchalk'
" Bundle 'Lokaltog/vim-distinguished'
" Bundle 'nanotech/jellybeans.vim'
" Bundle 'nvie/vim-flake8'
" Bundle 'Shougo/neocomplcache'
" Bundle 'bling/vim-airline'

" powerline config
set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim/
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
"colorscheme jellybeans
"colorscheme distinguished
colorscheme vividchalk
"colorscheme solarized
"
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" And set some nice chars to do it with
set listchars=tab:»\ ,eol:¬
"
" automatically change window's cwd to file's dir
set autochdir
"
" more subtle popup colors
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
endif


autocmd BufRead,BufNewFile *.dyn set filetype=lsdyna
autocmd BufRead,BufNewFile *.k set filetype=lsdyna
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.shge set filetype=sh

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:jedi#auto_initialization = 1
" let g:jedi#popup_on_dot = 1
" let g:jedi#popup_select_first = 1
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
"
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
" let g:pymode_rope = 0 " use jedi-vim instead
"
" Documentation
" let g:pymode_doc = 1
" let g:pymode_doc_key = 'K'
"
" Linting
" let g:pymode_lint = 1
" let g:pymode_lint_checker = "pyflakes,pep8"
"
" Auto check on save
" let g:pymode_lint_write = 1
"
" Support virtualenv
" let g:pymode_virtualenv = 1
"
" Enable breakpoints plugin
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_key = '<leader>b'
"
" syntax highlighting
" let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" let g:pymode_folding = 1

