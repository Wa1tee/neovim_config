set encoding=utf-8

call plug#begin()
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdtree'
    Plug 'godlygeek/tabular'
    "Plug 'preservim/nerdcommenter'
    Plug 'numToStr/Comment.nvim'

    " Colorschemes
    Plug 'phanviet/vim-monokai-pro'
    Plug 'loctvl842/monokai-pro.nvim'
    Plug 'morhetz/gruvbox'
    Plug 'rebelot/kanagawa.nvim'
    Plug 'catppuccin/nvim'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

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
    "Plug 'altermo/ultimate-autopair.nvim'
    
    "Plug 'phaazon/hop.nvim'
    Plug 'ggandor/leap.nvim'

    "Plug 'ggandor/leap-spooky.nvim'
    Plug 'L3MON4D3/LuaSnip', {'tag': 'v1.1.0'}
    
    " LSP
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'

    Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

    Plug 'neovim/nvim-lspconfig'
    
    "CMP
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/cmp-nvim-lua'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'saadparwaiz1/cmp_luasnip'

    Plug 'NMAC427/guess-indent.nvim'

    Plug 'nanozuki/tabby.nvim'


    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    Plug 'vimwiki/vimwiki'
    Plug 'nvim-neorg/neorg'

call plug#end()

colorscheme monokai_pro
"colorscheme kanagawa
set termguicolors

set completeopt=menu,menuone,noselect

set nocompatible
filetype plugin on
syntax on

let mapleader = ","

map <C-n> :NERDTreeToggle<CR>

nmap <leader><leader>v :source $MYVIMRC<CR>
nmap <leader><leader>s :source ~/.config/nvim/luafiles/luasnip.lua<CR>
nmap <leader><leader>l :source %<CR>

set mouse=a
set smartcase
set number
" Tabs to be 4 wide and turned into spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Command line two symbols high
set cmdheight=1
" idle timeout write to swap
set updatetime=300
" Ignore case in a pattern
set ignorecase

" set cursorline

" This is set in lsp.lua
"set signcolumn=yes

luafile ~/.config/nvim/luafiles/luasnip.lua
luafile ~/.config/nvim/luafiles/comment.lua
luafile ~/.config/nvim/luafiles/mason.lua
luafile ~/.config/nvim/luafiles/treesitter.lua
luafile ~/.config/nvim/luafiles/lsp.lua
"luafile ~/.config/nvim/luafiles/pairs.lua

luafile ~/.config/nvim/luafiles/lualine.lua
luafile ~/.config/nvim/luafiles/leap.lua
luafile ~/.config/nvim/luafiles/indent.lua
luafile ~/.config/nvim/luafiles/indent_blankline.lua
luafile ~/.config/nvim/luafiles/tabby.lua
luafile ~/.config/nvim/luafiles/neorg.lua
luafile ~/.config/nvim/luafiles/telescope.lua
luafile ~/.config/nvim/luafiles/colorschemes.lua
set nogdefault
set gdefault
