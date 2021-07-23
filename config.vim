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
set smartindent
set ruler
set ff=unix

syntax enable

" Configuration of tabs for Makefiles
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
else
    set expandtab
endif

" Change the match pattern of braces and brackets to be different
highlight MatchParen ctermfg=red
set guicursor=

" As you type for a search term, highlight the first one found
set incsearch

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set laststatus=2

" Highlight as you search for words
set hlsearch

" Hit spacebar to remove all highlights
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Add support for fzf search in vim
set rtp+=~/.fzf

set directory=~/.config/nvim/swap
