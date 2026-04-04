local map = vim.keymap.set
local opts = { noremap = false, silent = true }

map("n", "<leader>i", function ()
   state = vim.lsp.inlay_hint.is_enabled()
   vim.lsp.inlay_hint.enable(not state)
end, vim.tbl_extend('force', opts, { desc = "Enable inlay hints" }))

