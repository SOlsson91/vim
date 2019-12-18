" VIM Configuration File
" Author: Sebastian Olsson
" Description: Personal vimconfig, used for C++, python, javascript, html and css development
" ----------------------------------
" Contact:
" Github: github.com/Spunkt
" Twitter: twitter.com/solsson91
" Mail: me@sebastianolsson.com

" ----------------------------------
" General setup
" ----------------------------------
filetype plugin on
set nowrap
set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nobackup
set relativenumber
set ruler
set wildmenu
syntax enable

" ---------- Color ----------
" Set line number foreground and background color
highlight LineNr ctermbg=darkgray ctermfg=white
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" ---------- Search -----------
set incsearch
set hlsearch
noremap <C-l> :nohlsearch<CR><C-l>
noremap! <C-l> <ESC>:nohlsearch<CR><C-l>

" ---------- Folding ----------
set foldenable
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" ---------- Movement ----------
" Remap move to first/last character
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" Tab navigation (Ctrl-tab)
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
