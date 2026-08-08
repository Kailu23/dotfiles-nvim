require "nvchad.mappings"
local opts = { noremap = false, silent = true }

-- add yours here

local map = vim.keymap.set
-- override nvchad.mappings here
require("core.mappings.init")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "enter normal mode" })
map("i", "kj", "<ESC>", { desc = "enter normal mode" })

map("t", "<ESC>", "<C-\\><C-n>", { desc = "enter normal mode" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>qo", "<cmd>copen<CR>", vim.tbl_extend("force", opts, { desc = "Open quickfix window" }))
map("n", "<leader>qc", "<cmd>cclose<CR>", vim.tbl_extend("force", opts, { desc = "Close quickfix window" }))

map("v", "K", ":m '<-2<CR>gv=gv", vim.tbl_extend("force", opts, { desc = "Move highlighted line/lines up" }))
map("v", "J", ":m '>+1<CR>gv=gv", vim.tbl_extend("force", opts, { desc = "Move highlighted line/lines up" }))

map("n", "<A-a>", require("oil").open_float, vim.tbl_extend("force", opts, { desc = "Oil" }))
