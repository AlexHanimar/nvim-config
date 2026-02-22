vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.mappings")
require("config.lsp")
require("config.options")

local pacman = require("core.pacman")
pacman.setup{
    {package = "nvim-treesitter/nvim-treesitter"},
    {package = "nvim-telescope/telescope.nvim"},
    {package = "nvim-lua/plenary.nvim"},
    {package = "mason-org/mason.nvim"},
    {package = "lervag/vimtex"},
    {package = "neovim/nvim-lspconfig"},
    {package = "j-hui/fidget.nvim"},
    {package = "nvim-mini/mini.nvim"},
    {package = "nvim-tree/nvim-tree.lua"},
    {package = "stevearc/oil.nvim"},
}

require("config.plugins")
