-- line
vim.o.wrap = false
vim.o.cursorline = true

-- buffers
vim.o.clipboard = "unnamedplus"

-- indent
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- search
vim.o.ignorecase = true
vim.o.smartcase = true

-- columns
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"

-- vimtex
vim.g.vimtex_view_method = "zathura"

-- filetypes
vim.filetype.add{
    pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
}

