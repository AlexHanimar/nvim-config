require("nvim-treesitter.configs").setup{
    ensure_installed = {
        "c",
        "lua",
        "cpp",
        "python",
        "comment",
        "css",
        "json",
        "jsonc",
        "markdown",
        "markdown_inline",
        "hyprlang",
        "html",
        "rust",
    },
    auto_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    indent = {
        enable = false
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        }
    }
}

