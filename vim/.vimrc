" TODO see if there's a way to store keybindings in a separate file

" plugin management
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" turn off error bells
set noerrorbells visualbell t_vb=

" map leader to spacebar
map <Space> <leader>

" map omni completion to control + space while in insert mode
inoremap <C-Space> <C-x><C-o>

" vim interprets <C-Space> as <C-@>, this fixes that
imap <C-@> <C-Space>

" insert the longest common text of matches, and
" show menu even if there's only one entry
set completeopt=longest,menuone

" remove the preview window from completion
set completeopt-=preview

" enable mouse
set mouse=a

" move between windows just using control + key
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" set join to U and navigate tabs with J and K
nnoremap U J
nnoremap K gt
nnoremap J gT

" set _ to remove highlighting
nnoremap _ :noh<CR>

" indenting
" TODO figure out how to set autoindent properly
filetype plugin indent on
set tabstop=4 " use 4 spaces for tab size
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " use spaces for tab key

" text wrapping
" TODO see if there's a way to set wrapping per file-type
set breakindent
set breakindentopt=shift:2,sbr
set showbreak=↪
set linebreak

" updating files when changed outside of vim
" TODO look into this behavior
set autoread
map <leader>bb :checkt<CR>

" tab command bindings
map <leader>te :tabe<CR>
map <leader>tm :tabm

" window command bindings
map <leader>ww :w<CR>
map <leader>qq :q<CR>
map <leader>qa :qa<CR>
map <leader>wq :wq<CR>

" delete marks binding
map <leader>dm :delm<Space>

" color stuff
syntax on
colorscheme gruvbox
set background=dark

" enable hybrid line numbers
set number relativenumber

" ignore case when searching
set ignorecase

" highlight search results
set hlsearch

" NERDTree stuff
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=40
map <leader>nn :NERDTreeToggle<CR>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<CR>

" enable fzf in vim
set rtp+=/usr/local/opt/fzf

" fzf bindings
map <leader>ff :Files<CR>
map <leader>fg :GFiles<CR>
map <leader>fb :Buffers<CR>
map <leader>ag :Ag<Space>

" limit ALE to only use OmniSharp
let g:ale_linters = { 'cs': ['OmniSharp'] }

" have vim write to swap more often (for faster vim-gitgutter)
set updatetime=100

" OmniSharp commands
" the following commands are contextual, based on the cursor position
" TODO move this to cs specific file
map <leader>os :OmniSharpStartServer<CR>
map <leader>od :OmniSharpGotoDefinition<CR>
map <leader>oi :OmniSharpFindImplementations<CR>
map <leader>of :OmniSharpFindSymbol<CR>
map <leader>ou :OmniSharpFindUsages<CR>

