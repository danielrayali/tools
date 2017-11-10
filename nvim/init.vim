nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set nu
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set ruler
set ff=unix

syntax enable
colorscheme molokai

" Configuration of tabs for Makefiles
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
else
    set expandtab
endif

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

highlight MatchParen ctermfg=red
