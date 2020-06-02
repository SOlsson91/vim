" VIM Configuration File
" Author: Sebastian Olsson
" Description: Personal vimconfig
" ----------------------------------
" ----- Contact: -----
" Github:   github.com/Spunkt
" Twitter:  twitter.com/solsson91
" Mail:     me@sebastianolsson.com
" Website:  sebastianolsson.com

" ----------------------------------
" General setup
" ----------------------------------
syntax on

set noshowmatch
set nohlsearch
set hidden
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set number
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undoir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set ruler

set hlsearch
noremap <C-l> :nohlsearch<CR><C-l>
noremap! <C-l> <ESC>:nohlsearch<CR><C-l>
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set laststatus=2

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'OmniSharp/omnisharp-vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'

"Plug 'tpope/vim-fugitive'
"Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
	let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split=2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:lightline = {
	\ 'colorscheme': 'gruvbox',
	\ }
set noshowmode

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <C-p> :GFiles<CR>

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-space> coc#refresh()

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)
nnoremap <leader>cr :CocRestart

nnoremap B ^
nnoremap E $

nnoremap <Left>     <nop>
nnoremap <Right>    <nop>
nnoremap <Up>       <nop>
nnoremap <Down>     <nop>
inoremap <Left>     <nop>
inoremap <Right>    <nop>
inoremap <Up>       <nop>
inoremap <Down>     <nop>
nnoremap $          <nop>
nnoremap ^          <nop>

