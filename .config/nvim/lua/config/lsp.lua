require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "eslint", "jsonls" }
}

local lspconfig = require("lspconfig")

-- TSServer
lspconfig.ts_ls.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    local opts = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  end,
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
}

-- ESLint
lspconfig.eslint.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = true
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> EslintFixAll]]
    vim.api.nvim_command [[augroup END]]
  end,
}

-- JSON LSP
lspconfig.jsonls.setup {}

