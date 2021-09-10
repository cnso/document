set nocompatible
filetype off
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'altercation/vim-colors-solarized'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/loremipsum'
call plug#end()
filetype indent plugin on

set number
set relativenumber
set noundofile
set noswapfile
set nobackup
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
syntax on
syntax enable
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized
set backspace=indent,eol,start
set background=dark
set ignorecase
set wildmenu
set splitbelow
set termwinsize=10x
set nowrap


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<C-k>'
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<cr>"
let g:coc_global_extensions = ['coc-vimlsp',
            \ 'coc-pyright',
            \ 'coc-snippets',
            \ 'coc-pairs',
            \ 'coc-html',
            \ 'coc-json']
nnoremap <C-n> :NERDTreeToggle<cr>
let mapleader=";"

