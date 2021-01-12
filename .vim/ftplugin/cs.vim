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
" CSharp Specific
" ----------------------------------
filetype indent plugin on
" Set the type lookup function to use the preview window instead of echoing it
let g:OmniSharp_typeLookupInPreview = 1
let g:omnicomplete_fetch_full_documentation = 1
let g:OmniSharp_highlighting = 1
let g:OmniSharp_timeout = 5

if has('patch-8.1.1880')
  set completeopt=longest,menuone,popuphidden
  " Highlight the completion documentation popup background/foreground the same as
  " the completion menu itself, for better readability with highlighted
  " documentation.
  set completepopup=highlight:Pmenu,border:off
else
  set completeopt=longest,menuone,preview
  " Set desired preview window height for viewing documentation.
  set previewheight=5
endif

nnoremap <silent> <leader>od :OmniSharpDocumentation<CR>
nnoremap <silent> <leader>os :OmniSharpSignatureHelp<CR>
nnoremap <silent> <leader>oca :OmniSharpGetCodeActions<CR>
