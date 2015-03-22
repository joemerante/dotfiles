" line numbers on by default
set number

" Display options where available
set t_Co=256
color grb256
syntax on

" Clipboard functionality for vim
set clipboard=unnamed
set tabstop=2
set textwidth=80
set shiftwidth=2
set softtabstop=2

" Mouse support
if has("mouse")
  set mouse=a
endif

set mousefocus
set mousehide

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'tpope/vim-markdown'
" non-GitHub repos
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
