set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Lokaltog/vim-powerline'
Plugin 'Solarized'
Plugin 'Tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/Vundle.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
call vundle#end()

" mappings
let mapleader = ' '
"  powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2

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
set wildignore+=*/__pycache__/*,*.egg,*.pyc,*.pyo,*.o,*/bin/*
set wildmenu
set foldmethod=indent
set foldlevelstart=20
set listchars=tab:▸⋅,eol:¬,trail:⋅

syntax on
syntax enable

" remaps
nnoremap <esc> :
nnoremap <up> :so %<CR>
nnoremap <down> :!./%<CR>
nnoremap <left> :bn<CR>
nnoremap <right> :bp<CR>
nnoremap <leader>i :set list!<CR>
nnoremap <leader>p :set paste!<CR>
nnoremap <leader>t :TagbarToggle<cr>

" replace
nnoremap <leader>riw yiw:/gc<home>%s/\<<C-r>"\>/
nnoremap <leader>riW yiW:/gc<home>%s/\<<C-r>"\>/

" search
nnoremap <leader>a :Ag 

vnoremap <leader>n :normal 

" swap
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp

" ctags
set tags=./tags;$HOME

" autocommands
au VimResized * exe "normal! \<c-w>="

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

" highlight lines that are 80+ chars
call matchadd('ColorColumn', '\%80v', 20)
