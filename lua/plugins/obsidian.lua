return {
  "obsidian-nvim/obsidian.nvim",
  enabled = false,
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "saghen/blink.cmp",
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "Obsidian",
          path = "/Users/jpinillafore/Documents/Obsidian/",
        },
      },
      notes_subdir = "inbox",
      new_notes_location = "notes_subdir",

      frontmatter_enagle = true,
      legacy_commands = false,
      -- frontmatter.enable = true,
      templates = {
        subdir = "templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M:%S",
      },


      -- name new notes starting the ISO datetime and ending with note name
      -- put them in the inbox subdir
      -- note_id_func = function(title)
      --   local suffix = ""
      --   -- get current ISO datetime with -5 hour offset from UTC for EST
      --   local current_datetime = os.date("!%Y-%m-%d-%H%M%S", os.time() - 5*3600)
      --   if title ~= nil then
      --     suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      --   else
      --     for _ = 1, 4 do
      --       suffix = suffix .. string.char(math.random(65, 90))
      --     end
      --   end
      --   return current_datetime .. "_" .. suffix
      -- end,

      completion = {
        nvim_cmp = false,
        blink = true,
        min_chars = 2,
      },
    })
  end
}
