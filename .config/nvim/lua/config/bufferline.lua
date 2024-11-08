require("bufferline").setup {
  options = {
    numbers = "none",  -- Alterado para "none" para evitar possíveis erros de formatação
    diagnostics = "nvim_lsp",  -- Mostrar diagnósticos do LSP, se disponível
    show_buffer_close_icons = true,
    show_close_icon = true,
    separator_style = "slant",
    always_show_bufferline = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true,
      }
    },
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    -- Definindo segmentação de componentes explicitamente
    custom_filter = function(buf_number)
      -- Ocultar help, quickfix ou buffers não nomeados
      if vim.bo[buf_number].filetype ~= "help"
          and vim.bo[buf_number].filetype ~= "quickfix"
          and vim.fn.bufname(buf_number) ~= "" then
        return true
      end
    end,
  }
}

-- Keybindings para Navegar entre Buffers
vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', ':bdelete<CR>', { noremap = true, silent = true })

