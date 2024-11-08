vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
 use 'mg979/vim-visual-multi'
  use 'wbthomason/packer.nvim'
  -- File Explorer
  use 'nvim-tree/nvim-tree.lua'
  -- Theme and Visuals
  use 'Mofiqul/vscode.nvim'
  use 'dracula/vim'
  use 'akinsho/bufferline.nvim'
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use 'norcalli/nvim-colorizer.lua'
  use 'nvim-lualine/lualine.nvim'
  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  -- Syntax Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- LSP, Autocompletion & Snippets
  use 'nvim-lua/plenary.nvim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  -- Linting and Formatting
  use 'jose-elias-alvarez/null-ls.nvim'
  -- Debugging
  use 'mfussenegger/nvim-dap'
  use {
    'rcarriga/nvim-dap-ui',
    requires = {'mfussenegger/nvim-dap'}
  }
  use 'mxsdev/nvim-dap-vscode-js'
  use {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile"
  }
  -- Testing
  use 'nvim-neotest/nvim-nio'
  use {
  'goolord/alpha-nvim',
  requires = { 'nvim-tree/nvim-web-devicons' }
}
use 'nvim-tree/nvim-tree.lua'
use 'nvim-telescope/telescope.nvim'
use 'ahmedkhalf/project.nvim'
use 'Shatur/neovim-session-manager'

end)

