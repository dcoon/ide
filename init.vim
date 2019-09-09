" Maintained by David Coon <david@davidcoon.org>
"
"
"
"
" Sections:
"       General
"       Syntax & Colors
"
"

"
" General
"
"

" This must be first, because it changes other options as a side effect.
set nocompatible

" os x backspace fix
set backspace=indent,eol,start

set modelines=0   " dont need modelines and the potential security hazard


syntax on                   " Enable syntax highlighting.
" set termguicolors
try
    colorscheme one
catch
endtry

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
set number

" dont use backup files
set nobackup
set noswapfile

" Auto read when a file is changed on disk
set autoread
set clipboard=unnamed           " normal OS clipboard interaction

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
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'



"
" Code folding
"
set foldenable                  " enable folding
set foldmethod=syntax
set foldlevelstart=3
" set foldcolumn=1                " add a fold column
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
                                " which commands trigger auto-unfold
" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=2

set shortmess=atl

"  UTF-8.
set termencoding=utf-8
set encoding=utf-8
set lazyredraw                  " don't update the display while executing macros
"set laststatus=2                " tell VIM to always put a status line in, even
                                "    if there is only one window
set cmdheight=2                 " use a status bar that is 2 rows high


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

set mouse=a                     " enable using the mouse if terminal emulator

" Allow switching dirty buffers
set hidden
set switchbuf=useopen           " reveal already opened files from the
                                " quickfix window instead of opening new
                                " buffers

" Automatically change the working dir
set autochdir

"
" Key mappings
"

nnoremap ; :
nnoremap <leader>; ;

" Close current buffer
" noremap <c-k> :bd <CR><CR>

" Switch to next buffer
" noremap <c-b> :bn <CR><CR>

" Ctrl-S to save
" noremap <c-s> :w <CR><CR>


call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ryanolsonx/vim-lsp-javascript'
Plug 'ekalinin/Dockerfile.vim'
Plug 'rakr/vim-one'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()
