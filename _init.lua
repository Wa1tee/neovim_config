vim.cmd([[

call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch' : 'release'} 
    Plug 'kovisoft/paredit'
    Plug 'tpope/vim-surround'
    Plug 'phanviet/vim-monokai-pro'
    Plug 'scrooloose/nerdtree'
    Plug 'godlygeek/tabular'
    Plug 'preservim/nerdcommenter'
    Plug 'itchyny/lightline.vim'
	" CSV
	Plug 'chrisbra/csv.vim'
    " Git
   " Plug 'airblade/vim-gitgutter'
   " Plug 'tpope/vim-fugitive'
   " Plug 'rbong/vim-flog'
    "Distraction free stuff
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'machakann/vim-highlightedyank'
    Plug 'shortcuts/no-neck-pain.nvim', { 'tag': '*' }
    Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
    Plug 'mbbill/undotree' 
    "Plug 'tmsvg/pear-tree'
    Plug 'LunarWatcher/auto-pairs'
    Plug 'williamboman/mason.nvim'
    Plug 'SirVer/ultisnips'

call plug#end()

colorscheme monokai_pro

]])


vim.opt.termguicolors   = true
vim.opt.mouse           = 'a'
vim.opt.ignorecase      = true
vim.opt.smartcase       = true
vim.opt.hlsearch        = false
vim.opt.wrap            = true
vim.opt.breakindent     = true
vim.opt.shiftwidth      = 4
vim.opt.tabstop         = 4
vim.opt.expandtab       = true
vim.opt.number          = true
vim.opt.cmdheight       = 2
vim.keymap.set('n', '<c-n>', ':NERDTreeToggle<cr>')


-- Peartree
vim.g.pear_tree_repeatable_expand = 0

--vim.g.UltiSnipsExpandTrigger="<s-tab>"
--vim.g.UltiSnipsJumpForwardTrigger="<c-b>"
--vim.g.UltiSnipsJumpBackwardTrigger="<c-z>"
