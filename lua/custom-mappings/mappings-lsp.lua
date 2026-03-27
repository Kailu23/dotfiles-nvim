local map = vim.keymap.set
local opts = { noremap = false, silent = true }

-- roslyn bindings
map("n", "<leader>k", "<CMD>lua vim.lsp.buf.hover()<CR>", vim.tbl_extend("force", opts, {desc = "hover details"}))
map("n", "<F12>", "<CMD>lua vim.lsp.buf.definition()<CR>", vim.tbl_extend("force", opts, { desc = "go to definition"}))
map("n", "<C-F12>", "<CMD>lua vim.lsp.buf.implementation()<CR>", vim.tbl_extend("force", opts, { desc = "go to implementation"}))
-- map("n", "<leader>wa", "<CMD>lua vim.lsp.buf.add_workspace_folder()<CR>", vim.tbl_extend("force", opts, { desc = "add workspace folder"}))
-- map("n", "<leader>wr", "<CMD>lua vim.lsp.buf.remove_workspace_folder()<CR>", vim.tbl_extend("force", opts, { desc = "remove workspace folder"}))
-- map("n", "<leader>wl", "<CMD>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", vim.tbl_extend("force", opts, { desc = "list all workspace folders"}))

map("n", "<leader>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>", vim.tbl_extend("force", opts, { desc = "code action"}))
map("v", "<leader>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>", vim.tbl_extend("force", opts, { desc = "code action"}))
