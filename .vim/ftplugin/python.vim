" VIM Configuration File
" Author: Sebastian Olsson
" Description: Personal vimconfig
" ----------------------------------
" Contact:
" Github:       github.com/Spunkt
" Twitter:      twitter.com/solsson91
" Mail:         me@sebastianolsson.com
" Website:      sebastianolsson.com
" ----------------------------------
" Python Specific
" ----------------------------------
set termguicolors
colorscheme Benokai
nnoremap <buffer> <F5> :exec '!clear; python' shellescape(@%, 1)<cr>

