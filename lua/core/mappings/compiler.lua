local map = vim.keymap.set
local opts = { noremap = true, silent = true }


map( "n", "<leader>b", "<CMD>make<CR>", vim.tbl_extend('force', opts, { desc = "Build"}))
map( "n", "<leader>cd", "<CMD>compiler dotnet<CR>", vim.tbl_extend('force', opts, { desc = "Set dotnet compiler"}))
