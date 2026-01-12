local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = vim.fn.stdpath("data") ..
    package.config:sub(1, 1) .. "jdtls-workspace" .. package.config:sub(1, 1) .. project_name

return {
  cmd = { 'jdtls', '-data', workspace_dir, '--jvm-arg=-javaagent:/Users/jpinillafore/.local/share/nvim/lombok/lombok.jar' },
  filetypes = { 'java' },
  root_markers = { 'gradlew', '.git', 'mvnw' },
  root_dir = vim.fs.root(0, { 'gradlew', '.git', 'mvnw' }),

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
    }
  },

  -- This sets the `initializationOptions` sent to the language server
  -- If you plan on using additional eclipse.jdt.ls plugins like java-debug
  -- you'll need to set the `bundles`
  --
  -- See https://codeberg.org/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don't plan on any eclipse.jdt.ls plugins you can remove this
  --init_options = {
  -- bundles = {}
  --},

}
