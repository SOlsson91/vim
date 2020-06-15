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
let g:OmniSharp_server_use_mono = 1
" Set the type lookup function to use the preview window instead of echoing it
"let g:OmniSharp_typeLookupInPreview = 1

" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 5

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview', 'popup'
" and 'popuphidden' if you don't want to see any documentation whatsoever.
" Note that neovim does not support `popuphidden` or `popup` yet: 
" https://github.com/neovim/neovim/issues/10996
set completeopt=longest,menuone,preview,popuphidden

" Highlight the completion documentation popup background/foreground the same as
" the completion menu itself, for better readability with highlighted
" documentation.
set completepopup=highlight:Pmenu,border:on

" Fetch full documentation during omnicomplete requests.
" By default, only Type/Method signatures are fetched. Full documentation can
" still be fetched when you need it with the :OmniSharpDocumentation command.
let g:omnicomplete_fetch_full_documentation = 1

" Set desired preview window height for viewing documentation.
" You might also want to look at the echodoc plugin.
set previewheight=5

" Tell ALE to use OmniSharp for linting C# files, and no other linters.
let g:ale_linters = { 'cs': ['OmniSharp'] }

" Update semantic highlighting on BufEnter, InsertLeave and TextChanged
let g:OmniSharp_highlighting = 2
