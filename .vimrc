" pathogen
execute pathogen#infect()
Helptags
syntax on
filetype plugin indent on

" plugins
nmap <C-o> :TagbarOpen fc<CR>
map <C-n> :NERDTreeToggle<CR>
let g:airline_theme='dark'

" solarized scheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" shortcut to vimrc
nnoremap <LEADER>ev :e $MYVIMRC<CR>

" source vimrc upon close
augroup vimrcEx
    au!
    autocmd bufwritepost .vimrc source $MYVIMRC
augroup END

" clear search highlighting
map <C-h> :nohlsearch<CR>

" map esc to exit terminal emulator
tnoremap <Esc> <C-\><C-n>

" line numbers
set number

" let the cursor shape change in the terminal
"let $NVIM_TUI_ENABLE_CURSOR_SHAPE

" switch between windows, even in terminal emulator
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" four space tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" show tabs
set list
set listchars=tab:>-
