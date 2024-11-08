require("project_nvim").setup {
  manual_mode = false,
  detection_methods = { "pattern" },
  patterns = { ".git", "Makefile", "package.json" },
  show_hidden = true,
}

require('telescope').load_extension('projects')

