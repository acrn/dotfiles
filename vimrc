set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'SuperTab'
Bundle 'Solarized'
Bundle 'oscarsen/Slem'

" mappings
let mapleader = ' '
"  FuzzyFinder
nnoremap <Leader>t :FufCoverageFile<CR>
nnoremap <Leader>b :FufBuffer<CR>
"  Slem
nnoremap <Leader>c :call VimSlem(-1)<CR>
nnoremap <Leader>l :call VimSlem(input("to line: ", ""))<CR>

filetype plugin indent on

" indentation and such
set nu
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent
set smartindent

set autowrite
set autoread

set hidden
set wildmenu
syntax on
syntax enable

if filereadable(expand("~/dotfiles/vimrc_local"))
  source ~/dotfiles/vimrc_local
endif
