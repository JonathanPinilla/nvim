vim.lsp.enable({
  "jdtls",
  "lua_ls",
  "javascript_ls",
  "html_ls",
  "css_ls",
  "prettier",
  "vim",
  "clangd"
})

vim.diagnostic.config({
    -- virtual_lines = true,
    virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code action' })
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = 'Code format' })
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = 'Code rename' })
vim.keymap.set('n', '<leader>bd', '<cmd>bd<CR>', { desc = 'Buffer delete' })
