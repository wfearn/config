set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'SirVer/ultisnips'
call vundle#end() " required
filetype plugin indent on " required

" ultisnips options
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" colors
syntax enable
set t_Co=256
colorscheme dracula

" tabs
set softtabstop=4
set tabstop=4
set expandtab
set shiftwidth=4

" ui
set number relativenumber
set showcmd
set cursorline
set lazyredraw
set wildmenu
set showmatch
filetype indent on
set list listchars=tab:»\ ,trail:•,nbsp:•

" search
set incsearch
set hlsearch

" remaps
nnoremap <C-F> <C-F>zz
nnoremap <C-B> <C-B>zz
nnoremap <silent> <Space> :silent let @/ = ""<CR>
