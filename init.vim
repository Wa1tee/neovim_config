set encoding=utf-8

call plug#begin()
    Plug 'tpope/vim-surround'
    Plug 'phanviet/vim-monokai-pro'
    Plug 'scrooloose/nerdtree'
    Plug 'godlygeek/tabular'
    Plug 'preservim/nerdcommenter'
    "Plug 'itchyny/lightline.vim'
    
    "Lualine and icons
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'lukas-reineke/indent-blankline.nvim'
	
    " CSV
	Plug 'chrisbra/csv.vim'

    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'rbong/vim-flog'

    Plug 'machakann/vim-highlightedyank'
    Plug 'mbbill/undotree' 

    Plug 'LunarWatcher/auto-pairs'
    
    Plug 'phaazon/hop.nvim'
    "Plug 'ggandor/leap-spooky.nvim'
    Plug 'L3MON4D3/LuaSnip', {'tag': 'v1.1.0'}
    
    " LSP
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'neovim/nvim-lspconfig'


    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    Plug 'vimwiki/vimwiki'
call plug#end()

colorscheme monokai_pro
set termguicolors

set nocompatible
filetype plugin on
syntax on

let mapleader = ","

map <C-n> :NERDTreeToggle<CR>

nmap <leader><leader>v :source $MYVIMRC<CR>
nmap <leader><leader>s :source ~/.config/nvim/luafiles/luasnip.lua<CR>

set mouse=a
set smartcase
set number
" Tabs to be 4 wide and turned into spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Command line two symbols high
set cmdheight=1
" idle timeout write to swap
set updatetime=300
" Ignore case in a pattern
set ignorecase


luafile ~/.config/nvim/luafiles/hop.lua
luafile ~/.config/nvim/luafiles/mason.lua
luafile ~/.config/nvim/luafiles/lualine.lua
luafile ~/.config/nvim/luafiles/luasnip.lua
luafile ~/.config/nvim/luafiles/treesitter.lua
