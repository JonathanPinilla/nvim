-- Install package manager (lazy vim)
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end --@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Configure and install plugins
require('lazy').setup({ import = "plugins" }, {
  install = {
    missing = true,
    colorscheme = { "slate" }
  },
  checker = {
    enabled = true,
    notify = true
  },
  change_detection = {
    enabled = true,
    notify = true
  },
  ui = {
    -- border = "rounded"
  }
})
