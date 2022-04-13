set nocompatible              " be iMproved, required

" vim-plug boilerplate
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
      silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ycm-core/YouCompleteMe'
Plug 'dracula/vim',{'name':'dracula'}
call plug#end()

" nerdtree options
nnoremap <Space><Space> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1 " Makes NERDTree close when I open a file

" ctrlp options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'

" YouCompleteMe options
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

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

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

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

" make split open to the right and down
set splitbelow
set splitright

" disable keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap <Backspace> <Nop>
inoremap <Backspace> <Nop>

" Trigger `autoread` when files change on disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
    \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
autocmd fileChangedShellPost *
    \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
