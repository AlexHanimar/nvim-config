-- vim.o.completeopt = "longest,menuone,fuzzy"
-- vim.o.wildmenu = true
-- vim.o.wildmode = "longest:full,full"

-- vim.api.nvim_create_autocmd("LspAttach", {
--     group = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
--     callback = function(ev)
--         vim.lsp.completion.enable(true, ev.data.client_id, ev.buf)
--     end,
-- })

vim.lsp.enable("lua_ls")
vim.lsp.enable("basedpyright")
vim.lsp.enable("ruff")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("tinymist")
vim.lsp.enable("texlab")
vim.lsp.enable("clangd")
