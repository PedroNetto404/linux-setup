local Path = require('plenary.path')
require('session_manager').setup({
  sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'),
  autoload_mode = require('session_manager.config').AutoloadMode.CurrentDir,
  autosave_last_session = true,
  autosave_ignore_not_normal = true,
  autosave_ignore_filetypes = { "gitcommit" },
})

