"VIM Configuration File
" Author: Sebastian Olsson
" Description: Personal vimconfig
" ----------------------------------
" Contact:
" Github:   github.com/Spunkt
" Twitter:  twitter.com/solsson91
" Mail:     me@sebastianolsson.com
" Website:  sebastianolsson.com

" ----------------------------------
" Plugins
" ----------------------------------

set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/NerdTree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ycm-core/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
call plug#end()
filetype plugin indent on

" ---------- NerdTree ----------
map <F2> :NERDTreeToggle<CR>

" ---------- YouCompleteMe ----------
set encoding=utf-8
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" ----------------------------------
" General setup
" ----------------------------------
filetype plugin on
set laststatus=2
set nowrap
set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nobackup
set relativenumber
set number
set ruler
set path+=**
set wildmenu
syntax enable
set noerrorbells visualbell t_vb=
set shortmess+=I " Disable the default vim startup message

" ---------- Search -----------
set ignorecase
set smartcase
set incsearch
set hlsearch
noremap <C-l> :nohlsearch<CR><C-l>
noremap! <C-l> <ESC>:nohlsearch<CR><C-l>

" ---------- Folding ----------
"set foldenable
"set foldmethod=indent
"set foldlevel=99
"nnoremap <space> za

" ---------- Movement ----------
" Remap move to first/last character
nnoremap B ^
nnoremap E $

" Disable Arrowkeys
nnoremap <Left>     <nop>
nnoremap <Right>    <nop>
nnoremap <Up>       <nop>
nnoremap <Down>     <nop>

inoremap <Left>     <nop>
inoremap <Right>    <nop>
inoremap <Up>       <nop>
inoremap <Down>     <nop>

" $/^ doesn't do anything
nnoremap $          <nop>
nnoremap ^          <nop>
" Tab navigation (Ctrl-tab)
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>

" ---------- Splits and Tabbed Files ----------
set splitbelow splitright
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

noremap <silent> <C-Left> :verical resize +3<CR>
noremap <silent> <C-Right> :verical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

set fillchars+=vert:\ 
