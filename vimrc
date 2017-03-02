execute pathogen#infect()
execute pathogen#helptags()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

colorscheme molokai
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set ruler
set nu
set timeoutlen=1000 ttimeoutlen=0
set mouse=nicr

set laststatus=2
let g:airline_powerline_fonts=1
let g:gitgutter_sign_column_always=1

autocmd BufWritePre * :%s/\s\+$//e
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
 match OverLength /\%121v.\+/
set rtp+=~/.fzf

" Open files in horizontal split
nnoremap <C-T> :call fzf#run({
\   'down': '40%',
\   'sink': 'botright split' })<CR>

" Open files in vertical horizontal split
nnoremap <C-V> :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>

" Configuration of tabs for Makefiles
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
set noexpandtab
else
set expandtab
set tabstop=4
set shiftwidth=4
endif

" Mapping multi-cursor selections
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-u>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
