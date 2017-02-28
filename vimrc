execute pathogen#runtime_append_all_bundles()
execute pathogen#helptags()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

colorscheme molokai
syntax enable
set syntax=on
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set ruler
set nu

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

