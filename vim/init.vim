
" Maintained by David Coon <david@davidcoon.org>
"
"
"
set nocompatible

"more characters will be sent to the screen for redrawing
set ttyfast
set ttimeout
set ttimeoutlen=50

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" dont need modelines and the potential security hazard
set modelines=0

" enable using the mouse if terminal emulator
set mouse=a

"
" Files & Buffers
"
" dont use backup files
set nobackup
set noswapfile

" Auto read when a file is changed on disk
set autoread

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" reveal already opened files from the quickfix window instead of opening new buffers
set switchbuf=useopen

" Turn on spell check for certain filetypes automatically
autocmd FileType *.md setlocal spell spelllang=en_us
autocmd FileType gitcommit setlocal spell spelllang=en_us

"
" Appearance
"
" normal OS clipboard interaction
set clipboard=unnamed


" Switch syntax highlighting on
syntax on

" Show line numbers
set number

" Always split in a predictable way
set splitbelow
set splitright

" show trailing whitespace chars
set list
"	this is a tab and a trailing space...
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Automatically indent when adding a curly bracket, etc.
set smartindent
set copyindent

"incremental search
set incsearch

"highlight search
set hlsearch
"searches are case insensitive unless they contain at least one capital letter
set ignorecase
set smartcase

"display incomplete commands
set showcmd

"a better menu in command mode
set wildmenu
set wildmode=longest:full

" enable folding
set foldenable
set foldmethod=syntax
set foldcolumn=1
" which commands trigger auto-unfold
"set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

" when hitting <BS>, pretend like a tab is removed, even if spaces
set tabstop=4
set softtabstop=4               
set smarttab
set shiftwidth=4
"set expandtab
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround                  

"shortcuts for quickfix window
"nmap <silent> <C-N> :cn<CR>zv
"nmap <silent> <C-P> :cp<CR>zv
"
"
"
