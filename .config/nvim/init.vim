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

"Plug 'wakatime/vim-wakatime'"

Plug 'morhetz/gruvbox'
"Plug 'joshdick/onedark.vim'
"Plug 'itchyny/lightline.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-lua/lsp-status.nvim' " Used by other plugin for basic lsp info

Plug 'ap/vim-css-color'

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'tsony-tsonev/nerdtree-git-plugin'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'sheerun/vim-polyglot' "Better syntax highlighting with one dark
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'mxw/vim-jsx' "DEPRECTED

Plug 'ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'machakann/vim-highlightedyank'
Plug 'https://github.com/adelarsq/vim-matchit'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Telescope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'kyazdani42/nvim-web-devicons'
"Plug 'ctrlpvim/ctrlp.vim'

Plug 'unblevable/quick-scope'
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treesitter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

call plug#end()
filetype plugin on

colorscheme gruvbox
set background=dark

set encoding=UTF-8

let mapleader =" "

set mouse=a
set shiftround
set hlsearch
set ignorecase
set incsearch
set nowrap
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
set clipboard+=unnamedplus " Use System Clipboard


"set cursorline " Highlight the current line
set laststatus=2 " Always display the status bar.
set smarttab
set shiftwidth=2
set tabstop=2
set hidden
set wildmenu
set ruler
set linebreak " Word wrap but don't cut words
set wrap
set smartindent " Indentation
set autoindent

"set cursorline to true when in insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let g:highlightedyank_highlight_duration = 200


inoremap jk <ESC>
inoremap kj <ESC>

" create new line without going into insert mode 
"nmap o o<Esc>
"nmap O O<Esc>

"" Paste replace visual selection without copying it
vnoremap <leader>p "_dP

"Mapping to exit :terminal mode
tnoremap <Esc> <C-\><C-n>

" Clear search highlight
nnoremap <Leader>c :noh<return><esc>

nnoremap <Leader>uu :UndotreeToggle<CR>

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

" These are the file extensions where vim-closetag plugin is enabled.
let g:closetag_filenames = '*.html, *.js, *.jsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

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

"let g:lightline = {
  "\ 'colorscheme': 'onedark',
  "\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lualine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require'lualine'.setup({
	options = {
		icons_enabled = true,
		theme = 'auto',
		component_separators = { left = '\\', right = '/' },
		section_separators = { left = '', right = '' },
		disabled_filetypes = {}
		},
	sections = {
		lualine_a = { 'mode' },
		lualine_b = { 'branch' },
		lualine_c = { require'lsp-status'.status },
		lualine_x = { 'filename', 'filetype' },
		lualine_y = { 'progress' },
		lualine_z = { 'location' }
		},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { 'filename' },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {}
		},
	tabline = {},
	extensions = {}
})
EOF


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Telescope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = require('telescope.actions').close,
      },
    },
    vimgrep_arguments = {
      'rg',
      '--vimgrep',
      '--hidden',
      '--smart-case',
      '--trim'
    },
    prompt_prefix = " ",
    selection_caret = " ",
    entry_prefix = "  ",
    set_env = { ["COLORTERM"] = "truecolor" },
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      prompt_position = 'bottom',
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require('telescope.sorters').get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require('telescope.sorters').get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
    extensions = {
      fzf = {
        override_generic_sorter = false,
        override_file_sorter = true,
        case_mode = "smart_case"
      }
    }
  }
})

-- require fzf extension for better fzf sorting algorithm
require('telescope').load_extension('fzf')
EOF


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_tags_command = 'ctags -R'
let g:fzf_layout = { 'up' :'~90%', 'window': { 'width': 0.95, 'height': 0.9 } }
let g:fzf_colors = {
	\ 'fg':      ['fg', 'Normal'],
	\ 'bg':      ['bg', 'Normal'],
	\ 'hl':      ['fg', 'Comment'],
	\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
	\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
	\ 'hl+':     ['fg', 'Statement'],
	\ 'info':    ['fg', 'PreProc'],
	\ 'border':  ['fg', 'Boolean'],
	\ 'prompt':  ['fg', 'Conditional'],
	\ 'pointer': ['fg', 'Exception'],
	\ 'marker':  ['fg', 'Keyword'],
	\ 'spinner': ['fg', 'Label'],
	\ 'header':  ['fg', 'Comment'] }
let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tree Sitter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require'nvim-treesitter.configs'.setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	},
  indent = {
    enable = false
  },
	textobjects = {
		select = {
			enable = true,
			lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				['af'] = '@function.outer',
				['if'] = '@function.inner',
				['ac'] = '@class.outer',
				['ic'] = '@class.inner',
			},
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				[']m'] = '@function.outer',
				[']]'] = '@class.outer',
			},
			goto_next_end = {
				[']M'] = '@function.outer',
				[']['] = '@class.outer',
			},
			goto_previous_start = {
				['[m'] = '@function.outer',
				['[['] = '@class.outer',
			},
			goto_previous_end = {
				['[M'] = '@function.outer',
				['[]'] = '@class.outer',
			},
		},
	},
})
EOF



