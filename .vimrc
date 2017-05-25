" pathogen
execute pathogen#infect()
Helptags
syntax on
filetype plugin indent on

" plugins
nmap <C-o> :TagbarOpen fc<CR>
map <C-n> :NERDTreeToggle<CR>
let g:airline_theme='dark'

" other plugins, noted but not in vimrc
" fugitive: git wrapper
" indentline: indent guides
let g:indentLine_color_term = 239
" delimitmate: autocomplete braces, etc.

" indent guides: indent visualization
" autocmd VimEnter * :IndentGuidesEnable
" shortcut is <leader>ig
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=DarkBlue ctermbg=5
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=DarkGray ctermbg=8
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indent_guides_color_change_percent = 10
let g:indent_guides_tab_guides = 0

" youcompleteme
let g:ycm_extra_conf_globlist = ['$MANTIS_TOP/*', '$OTOP/*' ]
let g:ycm_global_ycm_extra_conf = '$HOME/.vim/bundle/youcompleteme/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_always_populate_location_list = 1

" indicator of desired line length
set colorcolumn=80

" make sure mouse is enabled
set mouse=a

" solarized scheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" shortcut to vimrc
nnoremap <LEADER>ev :e $MYVIMRC<CR>

" shift between header and source
nnoremap <LEADER>h :e %:r.h<CR>
nnoremap <LEADER>s :e %:r.cpp<CR>

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

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" let the cursor shape change in the terminal
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE

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
