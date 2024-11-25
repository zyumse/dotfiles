call plug#begin()

" List your plugins here
" Plug 'tpope/vim-sensible'
Plug 'dense-analysis/ale'
let g:ale_fixers = {
	    \ 'python': ['autopep8'],
			\ }
let g:ale_python_autopep8_options = '--max-line-length=100'
let g:ale_python_flake8_options = '--max-line-length=100'
let g:ale_fix_on_save = 1
Plug 'davidhalter/jedi-vim'
let g:jedi#show_call_signatures = 1
let g:jedi#show_documentation_command = "<leader>k"

Plug 'vim-scripts/indentpython.vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
Plug 'github/copilot.vim'

Plug 'kien/ctrlp.vim'
call plug#end()

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 
" set ls=2
set clipboard=unnamedplus

set completeopt=noinsert,menuone,noselect

" set cursorline
set autoindent
set relativenumber
" set mouse=a
set splitbelow splitright
set title
set wildmenu
" set spell
set ttyfast
set guifont=hack_nerd_font:h11

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on
filetype plugin indent on
" Turn syntax highlighting on.
syntax on
syntax enable

set hidden

set incsearch
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

set foldmethod=syntax
set foldlevelstart=10
set foldmethod=indent
