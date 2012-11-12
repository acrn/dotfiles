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
nnoremap <silent> <Leader>p :FufFile **/<CR>
nnoremap <silent> <Leader>tb :FufBuffer<CR>
nnoremap <silent> <Leader>tl :FufLine<CR>
nnoremap <silent> <Leader>tq :FufQuickfix<CR>
nnoremap <silent> <Leader>tt :FufTaggedFile<CR>
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
set nosmartindent
set ruler

set autowrite
set autoread

set hidden
set wildignore+=*/build/*,*.egg,*.zip,*/.svn/*,*.zip,*.class
set wildmenu
set wildignore+=*/build/*,*.egg,*.zip,*/.svn/*,*.zip,*.class,*.pyc
set foldmethod=indent
set foldlevelstart=20

syntax on
syntax enable

" remaps
nnoremap <esc> :
nnoremap <up> :so %<CR>
nnoremap <down> :!./%<CR>
nnoremap <left> :bn<CR>
nnoremap <right> :bp<CR>
inoremap <left> <nop>
inoremap <right> <nop>

" replace
nnoremap <leader>riw yiw:%s/\<<C-r>"\>//gc<left><left><left>
nnoremap <leader>riW yiW:%s/\<<C-r>"\>//gc<left><left><left>

" grep
nnoremap <leader>gp :/ **/*.py<home>vimgrep /
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

augroup ftype_markdown
    autocmd!
    autocmd FileType markdown nnoremap <F12> :w<CR>:!markdown2b % > %.html<CR>
augroup END

if filereadable(expand("~/dotfiles/vimrc_local"))
  source ~/dotfiles/vimrc_local
endif
