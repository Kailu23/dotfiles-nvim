require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
-- override nvchad.mappings here
require("custom-mappings.mappings-lsp")


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "enter normal mode"})
map("i", "kj", "<ESC>", { desc = "enter normal mode"})
map("n", "<leader>ot", "<CMD>terminal<CR>", { desc = "open terminal"})

map("t", "<ESC>", "<C-\\><C-n>", { desc = "enter normal mode"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
