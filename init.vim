set encoding=utf-8

call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch' : 'release'} 
    Plug 'kovisoft/paredit'
    Plug 'tpope/vim-surround'
    Plug 'phanviet/vim-monokai-pro'
    Plug 'scrooloose/nerdtree'
    Plug 'godlygeek/tabular'
    Plug 'preservim/nerdcommenter'
    Plug 'itchyny/lightline.vim'
    Plug 'lukas-reineke/indent-blankline.nvim'
	" CSV
	Plug 'chrisbra/csv.vim'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'rbong/vim-flog'
    "Distraction free stuff
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/goyo.vim'

    Plug 'machakann/vim-highlightedyank'
    Plug 'shortcuts/no-neck-pain.nvim', { 'tag': '*' }
    Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
    Plug 'mbbill/undotree' 

    Plug 'LunarWatcher/auto-pairs'
    Plug 'williamboman/mason.nvim'
    Plug 'SirVer/ultisnips'
    
    " Neorg
    "Plug 'nvim-treesitter/nvim-treesitter'
    "Plug 'nvim-neorg/neorg'
call plug#end()

colorscheme monokai_pro
set termguicolors

set nocompatible
filetype plugin on
syntax on

map <C-n> :NERDTreeToggle<CR>

set mouse=a
set smartcase
set number
" Tabs to be 4 wide and turned into spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Command line two symbols high
set cmdheight=2
" idle timeout write to swap
set updatetime=300
" Ignore case in a pattern
set ignorecase

"source neorg.lua
