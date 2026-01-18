-- theming
vim.cmd.colorscheme("slate")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8

-- indentation
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Visual settings
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "120"

-- Map leader
vim.g.mapleader = " "
vim.g.maploaclleader = " "

-- general mappings
vim.keymap.set('n', '<leader>e', "<cmd>Lexplore<CR>", { desc = "File explorer" })
vim.keymap.set('n', '<leader>qj', "<cmd>cnext<CR>", { desc = "Quick fix next" })
vim.keymap.set('n', '<leader>qk', "<cmd>cprev<CR>", { desc = "Quick fix prev" })
vim.keymap.set('n', '<leader>h/', '<cmd>let @/=""<CR>', { desc = "Clear search" })

-- hide nvim mode
vim.opt.showmode = false

-- setting for obsidian
vim.opt.conceallevel = 2
