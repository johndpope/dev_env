set nocompatible
set relativenumber
set ruler
set clipboard=unnamedplus

filetype plugin on 
filetype on

execute pathogen#infect()

syntax on

autocmd BufWritePost *.py call Flake8()
let g:flake8_quickfix_height=5

" NERDTree
"  - automatic start
"  - mv cursor to main window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
