"  Vimjunegunn/vim-easy-align settings, rather then Vi settings (much better!).
"
" This must be first, beca it changes other options as a side effect.
set nocompatible
"set termguicolors

" os x backspace fix
set backspace=indent,eol,start

set modelines=0   " dont need modelines and the potential security hazard

" Enable syntax highlighting.
syntax on
"set laststatus=2

" Enable syntax highlighting
filetype on

" Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins


" show trailing whitespace chars
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.

" Automatically indent when adding a curly bracket, etc.
set smartindent
set copyindent

" Ruler on
set ruler

" Line numbers on
set nu

" dont use backup files
set nobackup
set noswapfile

" Auto read when a file is changed on disk
set autoread

" Turn on spell check for certain filetypes automatically
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us
" autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_us
autocmd FileType gitcommit setlocal spell spelllang=en_us


" Tabs should be converted to a group of 4 spaces.
" This is the official Python convention
" http://www.python.org/dev/peps/pep-0008/
" I didn't find a good reason to not  it everywhere.
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab


"
"indent
set foldmethod=syntax
set foldlevelstart=3

" Code folding
let g:_syntax_folding=1
au FileType  setlocal foldmethod=syntax

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=2

set shortmess=atl

"  UTF-8.
" set encoding=utf-8

" Search as you type.
set incsearch
set hlsearch

" Ignore case when searching.
set ignorecase
set smartcase

" Show autocomplete menus.
set wildmenu
set wildmode=full

" Show editing mode
set showmode

" Error bells are displayed visually.
set visualbell
set noerrorbells  " don't beep

" Allow switching dirty buffers
set hidden

" Automatically change the working dir
set autochdir

" Close current buffer
" noremap <c-k> :bd <CR><CR>

" Switch to next buffer
" noremap <c-b> :bn <CR><CR>

" Ctrl-S to save
" noremap <c-s> :w <CR><CR>

" Write this in your vimrc file
"let g:ale_lint_on_text_changed = 'never'
" You can disable this option too

" if you don't want linters to run on opening a file
"let g:ale_lint_on_enter = 0

" Write this in your vimrc file
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

"let g:ale_linters_explicit = 1

"let g:ale_fixers = { 'javascript': ['prettier'] }

"let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5'



"autocmd FileType javascript set formatprg=prettier\ --stdin<Paste>

"set statusline+=%{gutentags#statusline()}


call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

call plug#end()
