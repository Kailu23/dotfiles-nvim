require "nvchad.mappings"
local opts = { noremap = false, silent = true }

-- add yours here

local map = vim.keymap.set
-- override nvchad.mappings here
require("custom-mappings")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "enter normal mode"})
map("i", "kj", "<ESC>", { desc = "enter normal mode"})
map("n", "<leader>ot", "<CMD>terminal<CR>", { desc = "open terminal"})

map("t", "<ESC>", "<C-\\><C-n>", { desc = "enter normal mode"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>qo", "<cmd>copen<CR>", vim.tbl_extend('force', opts, { desc = "Open quickfix window"}) )
map("n", "<leader>qc", "<cmd>cclose<CR>", vim.tbl_extend('force', opts, { desc = "Close quickfix window"}))
