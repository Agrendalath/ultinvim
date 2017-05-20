" set default charset
set encoding=utf-8
set termencoding=utf-8

" disable .swap files
set noswapfile

" autoreload files
set autoread

" indentation
set autoindent
set copyindent
set ts=4                " number of spaces in a tab
set sw=4                " number of spaces for indent
set et                  " expand tabs into spaces

" highlight settings
set incsearch
set hlsearch
set ignorecase
set smartcase

" enable syntax highlight
filetype plugin indent on
syntax on

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" strip whitespaces from end of line
autocmd BufWritePre * :%s/\s\+$//e

" presentation settings
set number              " precede current line with its absolute line number
set relativenumber      " precede each line with its relative number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line
set list listchars=tab:>-,trail:.,extends:>

" highlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" decreasing updatetime
set updatetime=250

" making clipboard systemwide
set clipboard=unnamed
set sessionoptions=buffers

" colorschemes
colorscheme molokai
set colorcolumn=81

" terminal true colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:t_Co=256
let g:molokai_original=1

" load bundles
source ~/.config/nvim/bundles.vim
" load bundles config
source ~/.config/nvim/plugins.vim
" load key bindings
source ~/.config/nvim/bindings.vim

" save file with sudo
cmap w!! w !sudo tee > /dev/null %
