local dap = require('dap')

-- Configuração do adaptador DAP para Node.js
dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv("HOME") .. '/.local/share/nvim/site/pack/packer/opt/vscode-js-debug/out/src/vsDebugServer.js', '--stdio'},
}

dap.configurations.javascript = {
  {
    type = 'node2',
    request = 'launch',
    name = 'Launch file',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    type = 'node2',
    request = 'attach',
    name = 'Attach to process',
    processId = require'dap.utils'.pick_process,
    cwd = vim.fn.getcwd(),
  },
}

dap.configurations.typescript = {
  {
    type = 'node2',
    request = 'launch',
    name = 'Launch file (TS)',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
    outFiles = { "${workspaceFolder}/dist/**/*.js" },
  },
}

local dapui = require("dapui")
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- Keybindings do DAP
vim.api.nvim_set_keymap('n', '<F5>', ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F10>', ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F11>', ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F12>', ":lua require'dap'.step_out()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>B', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dr', ":lua require'dap'.repl.open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dl', ":lua require'dap'.run_last()<CR>", { noremap = true, silent = true })

