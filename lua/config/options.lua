-- python packages
vim.g.python3_host_prog=vim.fn.expand("/home/p1an1st/.virtualenvs/neovim/bin/python3")

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- center cursor
vim.o.scrolloff = 20

-- cursorline
vim.o.cursorline = true

-- case
vim.o.ignorecase = true
vim.o.smartcase = true

-- tabs
vim.o.tabstop = 4
vim.o.expandtab = false
vim.o.shiftwidth = 4
-- vim.o.smartindent = true

-- line wrapping
vim.o.wrap = false

-- line number
vim.o.number = true
vim.o.relativenumber = true

-- tabline
vim.o.showtabline = 2

-- clipboard
vim.o.clipboard = "unnamedplus"

-- truecolor
-- vim.o.termguicolors = false
-- if vim.fn.has("gui_running") == 1 then
-- 	vim.o.termguicolors = true
-- elseif vim.fn.empty("$DISPLAY") == 0 then
-- 	vim.o.termguicolors = true
-- end

-- filetypes
vim.filetype.add{
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
}
