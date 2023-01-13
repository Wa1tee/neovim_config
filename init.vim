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
    "Distraction free stuff
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/goyo.vim'

    Plug 'machakann/vim-highlightedyank'
    Plug 'mbbill/undotree' 

    Plug 'LunarWatcher/auto-pairs'
    "Plug 'williamboman/mason.nvim'
    "Plug 'SirVer/ultisnips'
    "Plug 'vimwiki/vimwiki'
    Plug 'rmagatti/auto-session'

    Plug 'phaazon/hop.nvim'
    "Plug 'ggandor/leap-spooky.nvim'
    Plug 'L3MON4D3/LuaSnip', {'tag': 'v1.1.0'}
    " Neorg
    "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    "Plug 'nvim-neorg/neorg'
call plug#end()

colorscheme monokai_pro
set termguicolors

set nocompatible
filetype plugin on
syntax on

let mapleader = ","
map <C-n> :NERDTreeToggle<CR>

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

"source neorg.lua

lua require'hop'.setup()



map <s-f> :HopWord<CR>

map <leader>d :Limelight<CR>:Goyo<CR>
map <leader>D :Limelight!<CR>:Goyo!<CR>

" Expand or jump in insert mode
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

" Jump forward through tabstops in visual mode
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'


" Jump backward through snippet tabstops with Shift-Tab (for example)
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'

lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

luafile luasnip.lua
"luafile spooky.lua
luafile autosession.lua
set sessionoptions+=winpos,terminal,folds

luafile lualine.lua
