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
nnoremap <silent> <Leader>ta :FufCoverageFile<CR>
nnoremap <silent> <Leader>tp :call fuf#setOneTimeVariables(['g:fuf_coveragefile_globPatterns',['**/*.py']]) \| FufCoverageFile<CR>
nnoremap <silent> <Leader>tr :call fuf#setOneTimeVariables(['g:fuf_coveragefile_globPatterns',['**/*.rb']]) \| FufCoverageFile<CR>
nnoremap <silent> <Leader>tj :call fuf#setOneTimeVariables(['g:fuf_coveragefile_globPatterns',['**/*.java','**/*.xml','**/*.properties','**/*.wsdl']]) \| FufCoverageFile<CR>
nnoremap <silent> <Leader>tc :call fuf#setOneTimeVariables(['g:fuf_coveragefile_globPatterns',['**/*.cpp','**/*.c','**/*.h']]) \| FufCoverageFile<CR>
nnoremap <silent> <Leader>tb :FufBuffer<CR>
nnoremap <silent> <Leader>tq :FufQuickfix<CR>
"  Slem
nnoremap <Leader>cc :call VimSlem(-1)<CR>
nnoremap <Leader>cl :call VimSlem(input("to line: ", ""))<CR>

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
