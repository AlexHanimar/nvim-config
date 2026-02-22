vim.g.mapleader = " ";
vim.g.maplocalleader = "\\"
vim.o.timeoutlen = 3000

vim.keymap.set("n", "<leader>t", ":tabnew<cr>")
vim.keymap.set("n", "<leader>T", ":tabclose<cr>")

vim.keymap.set("n", "<localleader>cm", vim.diagnostic.open_float)
vim.keymap.set("n", "<localleader>cf", vim.lsp.buf.format)
vim.keymap.set("n", "<localleader>ch", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)

vim.keymap.set({"n", "v"}, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set({"n", "v"}, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("n", "<leader>ft", ":NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>fe", ":tabnew | Oil<cr>")
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<cr>")
