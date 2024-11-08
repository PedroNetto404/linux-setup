require("nvim-tree").setup {
  disable_netrw = true,
  hijack_netrw = true,
  view = {
    width = 45,
    side = "left",
  },
}

vim.api.nvim_set_keymap('n', '<C-e>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

