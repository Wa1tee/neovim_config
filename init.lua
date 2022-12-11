vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local call = vim.call
local cmd = vim.cmd
local Plug = vim.fn['plug#']

call('plug#begin', PATH)
    Plug 'nvim-tree/nvim-web-devicons' -- optional, for file icons
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'phanviet/vim-monokai-pro'
call'plug#end'

cmd('colorscheme monokai_pro')


vim.opt.termguicolors   = true
vim.opt.mouse           = 'a'
vim.opt.ignorecase      = true
vim.opt.smartcase       = true
vim.opt.hlsearch        = false
vim.opt.wrap            = true
vim.opt.breakindent     = true
vim.opt.tabstop         = 4
vim.opt.shiftwidth      = 4
vim.opt.expandtab       = true
vim.opt.number          = true

require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  actions = {
    open_file = {
        window_picker = {
            enable = false,
        }
    }
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<cr>')




