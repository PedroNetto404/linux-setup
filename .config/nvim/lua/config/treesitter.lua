-- config/theme.lua
require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,              
        additional_vim_regex_highlighting = false,
    },
    ensure_installed = {
        "lua", "javascript", "typescript", "tsx", "go", "c_sharp", "python", "html", "css", "json", "yaml",
        "bash", "dockerfile", "graphql", "java", "php", "ruby", "rust", "vim", "vue", "svelte", "markdown", 
        "markdown_inline", "sql", "gitignore", "hcl", "toml", "json5", "xml", "dart", "kotlin", "julia",
        "make", "ninja", "cue", "ini", "groovy", "elixir", "rego", "awk", "perl", "powershell", "r", "scheme",
        "scss", "pug", "robot", "terraform", "kdl", "hocon", "awk", "beancount",
        "cuda", "fortran", "matlab", "verilog", "vhdl", "objdump", "systemtap", "glsl", "llvm",
        "scala", "pascal", "norg", "toml", "yaml", "xml", "twig", "vue", "wgsl", "fsharp", "tmux", "rst"
    },
}

