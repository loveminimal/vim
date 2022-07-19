set nocompatible
syntax on

set nobackup
set noswapfile

set encoding=utf-8
set t_Co=256
set number
set mouse=a
set hlsearch

" TAB
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent


" :map  :noremap    normal, visual, operator-pending
" :nmap :nnoremap   normal
" :xmap :xnoremap   visual
" :omap :onoremap   operator-pending
" :cmap :cnoremap   command-line
" :imap :inoremap   insert

noremap ,, <esc>
cnoremap ,, <esc>
inoremap ,, <esc>


let mapleader="\<space>"
noremap <leader>qq :wq<CR>

noremap <leader>wnn :sp<CR>
noremap <leader>wn :vsp<CR>
noremap <leader>wk :close<CR>
noremap <leader>wo :only<CR>
noremap <leader>ww :wincmd w<CR>

noremap <leader>fs :w<CR>
noremap <leader>fj :NERDTreeToggle<CR>

noremap <leader>sv :w<CR>:source ~/.vim/vimrc<CR>


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" VIM-PLUG >>>
""""""""""""""
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'tomasr/molokai'
Plug 'bling/vim-airline'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-markdown'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

"Reload .vimrc and :PlugInstall to install plugins
""""""""""""""
" VIM-PLUG <<<


colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1


