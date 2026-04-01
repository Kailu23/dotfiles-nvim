local map = vim.keymap.set
local opts = { noremap = false, silent = true }

map({ "n", "v" }, "<leader>xe", "<CMD>lua require('nvim-emmet').wrap_with_abbreviation()<CR>", vim.tbl_extend('force', opts, { desc = "Emmet: Wrap with abbreviation"}))
