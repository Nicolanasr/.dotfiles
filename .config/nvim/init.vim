set nocompatible
syntax on
filetype off

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin('~/.vim/bundle')
call plug#begin()

"Plugin 'VundleVim/Vundle.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'


Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot' "Better syntax highlighting with one dark
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
"Plug 'HerringtonDarkholme/yats.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'machakann/vim-highlightedyank'
Plug 'https://github.com/adelarsq/vim-matchit'

" Fuzzy finder (telescope)
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
filetype plugin on

colorscheme onedark
set background=dark

set encoding=UTF-8

let mapleader =" "

set mouse=a
set autoindent
set autoindent
set shiftround
set shiftwidth=2
set smarttab
set tabstop=2
set hlsearch
set ignorecase
set incsearch
set nolazyredraw 
set smartcase
set belloff=all
set visualbell
set number
set relativenumber
set so=8
set sidescrolloff=5
syntax enable
set backspace=2
set guifont=Fira\ Code\ Regular\ Nerd\ Font\ Complete:h11
set laststatus=2 " Always display the status bar.
set wildmenu
set ruler


set guicursor=n-v-c:block-Cursor
set guicursor+=n-v-c:blinkon0

let g:highlightedyank_highlight_duration = 200

inoremap jk <ESC>
inoremap kj <ESC>

"Mapping to exit :terminal mode
tnoremap <Esc> <C-\><C-n>

nmap <C-b> :NERDTreeToggle<CR>
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" create new file in current directory
nmap <C-n> :e %:h/

" Open new tab
nmap <C-t> :tabe<CR>
"nmap <C-w> :tabclose<CR>
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprev<CR>

" Remaps for prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  :Prettier<CR>
nmap <leader>f  :Prettier<CR>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-emmet', 
  \ 'coc-css', 
  \'coc-html', 
  \ ]

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
