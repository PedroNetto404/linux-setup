local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- Cabeçalho Estilizado
dashboard.section.header.val = {
  [[                                    ]],
  [[    ███╗   ██╗██╗   ██╗██╗███╗   ███╗ ]],
  [[    ████╗  ██║██║   ██║██║████╗ ████║ ]],
  [[    ██╔██╗ ██║██║   ██║██║██╔████╔██║ ]],
  [[    ██║╚██╗██║██║   ██║██║██║╚██╔╝██║ ]],
  [[    ██║ ╚████║╚██████╔╝██║██║ ╚═╝ ██║ ]],
  [[    ╚═╝  ╚═══╝ ╚═════╝ ╚═╝╚═╝     ╚═╝ ]],
  [[                                      ]],
  [[    Bem-vindo ao Neovim IDE 🚀       ]],
  [[                                    ]]
}

-- Botões Customizados com Ícones
dashboard.section.buttons.val = {
  dashboard.button("p", "📂  Projetos Recentes", ":Telescope projects<CR>"),
  dashboard.button("f", "🔍  Procurar Arquivo", ":Telescope find_files<CR>"),
  dashboard.button("r", "🗃️  Arquivos Recentes", ":Telescope oldfiles<CR>"),
  dashboard.button("e", "📝  Novo Arquivo", ":ene <BAR> startinsert<CR>"),
  dashboard.button("s", "⚙️  Configurações", ":e $MYVIMRC<CR>"),
  dashboard.button("u", "⬆️  Atualizar Plugins", ":PackerSync<CR>"),
  dashboard.button("q", "❌  Sair", ":qa<CR>")
}

-- Mensagem de Rodapé
local function footer()
  local version = vim.version()
  local nvim_version_info = "v" .. version.major .. "." .. version.minor .. "." .. version.patch
  return "Neovim " .. nvim_version_info .. " • Código com Confiança 💻 • Feito com ♥"
end
dashboard.section.footer.val = footer()

-- Configuração do Tema
dashboard.config.opts.noautocmd = true
alpha.setup(dashboard.config)

-- Cores Especiais (Opcional: pode melhorar o contraste dos elementos)
vim.cmd([[
  hi AlphaHeader guifg=#ebcb8b
  hi AlphaButtons guifg=#88c0d0
  hi AlphaFooter guifg=#a3be8c
]])
