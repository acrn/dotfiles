set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'L9'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Solarized'
Bundle 'Tagbar'
Bundle 'Valloric/YouCompleteMe'
Bundle 'gmarik/Vundle.vim'
Bundle 'guns/vim-clojure-static'
Bundle 'ivanov/vim-ipython'
Bundle 'kien/ctrlp.vim'
Bundle 'klen/python-mode'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
call vundle#end()

" mappings
let mapleader = ' '
"  powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2
"  pymode
"    This sounds like a good idea, but it creates surprising diffs when editing
"    other people's code.
let g:pymode_utils_whitespaces = 0

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
set wildignore=*/build/*,*/.svn/*,*/.git/*,*.class,*.zip
set wildignore+=*/__pycache__/*,*.egg,*.pyc,*.pyo,*.o
set wildmenu
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

" replace
nnoremap <leader>riw yiw:/gc<home>%s/\<<C-r>"\>/
nnoremap <leader>riW yiW:/gc<home>%s/\<<C-r>"\>/

" search
nnoremap <leader>gp yiw:/ **/*.py<home>vimgrep /
nnoremap <leader>gjs yiw:/ **/*.js<home>vimgrep /

vnoremap <leader>n :normal 

" swap
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp

" ctags
set tags=./tags;$HOME

augroup ftype_markdown
    autocmd!
    autocmd FileType markdown nnoremap <F12> :w<CR>:!markdown2b % > %.html<CR>
augroup END

autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

autocmd BufRead,BufNewFile *.html,*.js,*.css,*.scss,*.yaml
    \ setl shiftwidth=2 tabstop=2 softtabstop=2

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
  set background=dark
  colorscheme solarized
endif
