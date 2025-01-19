set smarttab                    " Autotabs for certain code
set expandtab                   " Use spaces instead of tabs
set tabstop=4                   " Visual width of tab character
set shiftwidth=4                " Make this same as tabstop
set shiftround                  " Use multiple of shiftwidth when indenting
set autoindent                  " If file has different indenting, use that
set copyindent                  " Copy the previous indentation on autoindenting

" Tabbing
nnoremap ;          :
nnoremap <C-t>      :tabnew<cr>
nnoremap <tab>      :tabn<cr>
nnoremap <S-tab>    :tabp<cr>

set noswapfile

" Airline
execute pathogen#infect()
let g:airline_powerline_fonts=1
filetype off
call pathogen#helptags()
filetype plugin indent on
set laststatus=2                " makes airline appear even with no split
let g:airline_theme='jellybeans'

" Syntax highlighting
set t_Co=256                    " Set terminal to 256 colors
set cursorline                " Highlight the current line
colorscheme jellybeans
let g:jellybeans_background_color_256=232
let g:jellybeans_background_color='020202'

set title                       " Displays the current file being edited
set nocompatible                " Use vim instead of vi defaults, must come first in file
set encoding=utf8               " Allow us to use unicode characters here, mostly for listchar

syntax on                       " Syntax highlighting, detected from extension or shabang
set number                      " Turn on line numbers
set numberwidth=4               " Set the width of the line number column
highlight LineNr ctermfg=grey   " Set line number color
set title                       " Show title in console title bar
set showmatch                   " Shows matching brackets/parentheses
set ruler                       " Show current line number/column in bottom right
set showmode                    " Always show what mode we're currently editing in
set hlsearch                    " Highlight search terms
set incsearch                   " Show search matches as you type
set visualbell                  " Show bell icon instead of beeping when doing something wrong
set noerrorbells                " Same
set background=dark             " Enable if you want to use dark mode
set wrap                        " If text goes off side of terminal, wrap it
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode

" Build CScope database
nmap ,cr :!cscope -Rb<enter> :cs reset<enter>

" Fix man
autocmd FileType man setlocal buftype=nofile bufhidden=wipe nomodifiable readonly noswapfile nobackup nowritebackup
autocmd FileType man nnoremap <buffer> q :bd!<CR>

" real time vim diffing: install Signify plugin
