" VIM Configuration File
" Author: Sebastian Olsson
" Description: Personal vimconfig, used for C++, python, javascript, html and css development
" ----------------------------------
" Contact:
" Github: github.com/Spunkt
" Twitter: twitter.com/solsson91
" Mail: me@sebastianolsson.com

" ----------------------------------
" C++ Specific
" ----------------------------------
"set termguicolors NOT WORKING WITH st
set background=dark
colorscheme gruvbox



" Switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" Run make with D7
nnoremap <F7> :make!<cr>
" goto definition with F12
map <F12> <C-]>
