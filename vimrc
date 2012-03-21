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
Bundle 'Tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'oscarsen/Slem'

" mappings
let mapleader = ' '
"  FuzzyFinder
nnoremap <silent> <Leader>ta :FufCoverageFile<CR>
nnoremap <silent> <Leader>tp :call fuf#setOneTimeVariables(
            \ ['g:fuf_coveragefile_globPatterns',['**/*.py']])
            \ \| FufCoverageFile<CR>
nnoremap <silent> <Leader>tr :call fuf#setOneTimeVariables(
            \ ['g:fuf_coveragefile_globPatterns',['**/*.rb']])
            \ \| FufCoverageFile<CR>
nnoremap <silent> <Leader>tj :call fuf#setOneTimeVariables(
            \ ['g:fuf_coveragefile_globPatterns',['**/*.java','**/*.xml',
            \ '**/*.jsp','**/*.properties','**/*.wsdl']]) \| FufCoverageFile<CR>
nnoremap <silent> <Leader>tc :call fuf#setOneTimeVariables(
            \ ['g:fuf_coveragefile_globPatterns',['**/*.cpp','**/*.c',
            \ '**/*.h']]) \| FufCoverageFile<CR>
nnoremap <silent> <Leader>tb :FufBuffer<CR>
nnoremap <silent> <Leader>tq :FufQuickfix<CR>
"  Slem
nnoremap <Leader>sc :call VimSlem(-1)<CR>
nnoremap <Leader>sl :call VimSlem(input("to line: ", ""))<CR>

"  searching
set hlsearch
set incsearch
set showmatch
set smartcase

filetype plugin indent on

" indentation and such
set nu
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set ruler

set autowrite
set autoread

set hidden
set wildmenu
set foldmethod=indent

syntax on
syntax enable

" remaps
nnoremap <up> :so %<CR>
nnoremap <down> :!./%<CR>
nnoremap <left> :bn<CR>
nnoremap <right> :bp<CR>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <leader>riw yiw:%s/\<<C-r>"\>//g<left><left>
nnoremap <leader>riW yiW:%s/\<<C-r>"\>//g<left><left>
vnoremap <leader>n :normal 

" swap
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp

" ctags
set tags=./tags;$HOME
augroup ftype_java
    autocmd!
    autocmd FileType java iab sout System.out.println
augroup END

if filereadable(expand("~/dotfiles/vimrc_local"))
  source ~/dotfiles/vimrc_local
endif
