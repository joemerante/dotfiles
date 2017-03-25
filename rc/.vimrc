set encoding=utf-8

set number

" Display options where available
set t_Co=256
color grb256
syntax on

" Clipboard functionality for vim
set clipboard=unnamed
set tabstop=2
set shiftwidth=2
set softtabstop=2
set wrap
set linebreak

" use ctrl-C to yank to the system clipboad by default
" cannot map the command key in vim..  
vnoremap <C-c> "*y

"make delete key behave like it does in other programs
set backspace=indent,eol,start

"if $TERM_PROGRAM =~ "iTerm"
"let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"let &t_SI .= "\<Esc>[1 q" "blinking block in insert mode
"	let &t_SI = "\<Esc>]12;orange\x7"
"endif

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
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" NERDTree
map <gt> :tabn<CR>
let g:NERDTreeShowHidden=1

filetype plugin indent on     " required!
filetype indent on"
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
