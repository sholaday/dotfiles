" cs specific indenting
set tabstop=4    " use 4 spaces for tab size
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab    " use spaces for tab key

" use the installed version of mono instead of the roslyn embedded one
let g:OmniSharp_server_use_mono = 1

" use fzf.vim as selector
let g:OmniSharp_selector_ui = 'fzf'

" disable omnisharp server auto-start
let g:OmniSharp_start_server = 0

" " set the omnisharp server port to 2000
" let g:OmniSharp_port = 2000

