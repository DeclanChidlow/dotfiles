" Disable compatibility with vi which can cause unexpected issues.
set nocompatible


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'junegunn/goyo.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'srcery-colors/srcery-vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn syntax highlighting on.
syntax enable

" Line numbers
set number

" Highlight current location
set cursorline
set cursorcolumn

" Improve search
set hlsearch
set smartcase
set ignorecase
set incsearch

" Do not wrap lines
set nowrap

" Enable file auto completion menu
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Make scrolling faster
set ttyfast

" Handle indentation
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=80

" Disable backups
set nobackup
set nowb
set noswapfile

" Always show the status line
set laststatus=2

" Quicker update time
set updatetime=300

" Avoid things shifting
set signcolumn=yes

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Telescope Plugin
" Allows searching files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COC Plugin
" Allows autocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Per-Language Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable type file detection
filetype on

" Load an indent file for the detected file type
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Modes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:command ProseM Goyo 70 | setlocal spell | set statusline=\

:command CodeM Goyo! | set nospell | set statusline=\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rebinds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Close and move to centre of opened brackets
inoremap <> <><Left>
inoremap () ()<Left>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap `` ``<Left>
