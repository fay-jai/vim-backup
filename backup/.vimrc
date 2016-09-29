"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " be iMproved
filetype off     " Required for Vundle
runtime custom/vundle.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=1000 " Sets how many lines of history VIM has to remember

" Turns on filetype and plugin detection 
" Loads language specific indentation files in ~/.vim/indent/
filetype indent on 
filetype plugin on

" Change default leader character to comma
let mapleader = ","
let g:mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set relativenumber " Show relative line numbers
set showcmd        " Show command in bottom bar
set cmdheight=2    " Set height of command bar
set cursorline     " Highlight the current line
set ruler          " Always show current position
set ignorecase     " Ignore case when searching
set smartcase      " When searching try to be smart about cases
set hlsearch       " Highlight search matches
set incsearch      " Search as characters are entered
set showmatch      " Highlight matching [], {}, ()
set mat=2          " How many tenths of a second to blink when matching [], {}, ()
set wildmenu       " Visual autocomplete for command menu
set lazyredraw     " Don't redraw while executing macros
set ttyfast        " Faster redraw

" No annoying sound on errors
set noerrorbells
set novisualbell

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on            " Enable syntax highlighting
set background=dark  " Use dark background (instead of light)
colorscheme badwolf  " Set color scheme
set encoding=utf8    " Set utf8 as default standard encoding
set ffs=unix,dos,mac " Use Unix as standard file type

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs 
set expandtab
set smarttab

" 1 tab is equal to 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
set linebreak
set textwidth=500

set autoindent
set smartindent
set wrap " Wrap lines
set backspace=indent,eol,start " Allow backspace in insert mode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" jk is escape
inoremap jk <esc>

" Break habit of using left-right-up-down keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <space> to / (search) and ctrl-<space> to ? (backwards search)
map <space> /
map <c-space> ?

" Smarter way to move between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Remap VIM 0 to first non-blank character
map 0 ^

" Fast saving
nmap <leader>w :w!<cr>

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<cr>

" Save session
nnoremap <leader>s :mksession<cr>

" Open vertically split window to edit .vimrc quickly
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source .vimrc quickly
nnoremap <leader>sv :source $MYVIMRC<cr>
