return {
  {
    'echasnovski/mini.nvim',
    enabled = true,
    config = function()
      local statusline = require 'mini.statusline'
      local trailspace = require 'mini.trailspace'
      local files = require 'mini.files'
      local icons = require 'mini.icons'
      local tabline = require 'mini.tabline'
      icons.setup{}
      files.setup{
        vim.keymap.set("n", "<leader>e", function () files.open() end, { desc = "Trim trailspaces" } )
      }
      tabline.setup{}
      statusline.setup { use_icons = true }
      trailspace.setup{
        vim.keymap.set("n", "<leader>tw", function () trailspace.trim() end, { desc = "Trim trailspaces" } )
      }
    end
  },
}
