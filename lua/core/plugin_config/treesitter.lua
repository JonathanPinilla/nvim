require 'nvim-treesitter.configs'.setup {
  --A list of parser names, or 'all'
  ensure_installed = {"c", "rust", "ruby", "vim", "java", "go", "javascript", "python"},

  --Install parsers syncronously (only applies to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
