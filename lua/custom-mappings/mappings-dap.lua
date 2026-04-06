local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map(
  "n",
  "<F5>",
  "<Cmd>lua require'dap'.continue()<CR>",
  vim.tbl_extend("force", opts, { desc = "DAP: Continue/Start" })
)
map(
  "n",
  "<S-F5>",
  "<Cmd>lua require'dap'.terminate({{restart = false}})<CR>",
  vim.tbl_extend("force", opts, { desc = "DAP: Terminate" })
)
map("n", "<C-S-F5>", "<Cmd>lua require'dap'.restart()<CR>", vim.tbl_extend("force", opts, { desc = "DAP: Restart" }))
map("n", "<F6>", "<Cmd>lua require'dap'.pause()<CR>", vim.tbl_extend("force", opts, { desc = "DAP: Pause" }))
-- map("n", "<F6>", "<Cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>", vim.tbl_extend("force", opts, { desc = ""}))
map(
  "n",
  "<F9>",
  "<Cmd>lua require'dap'.toggle_breakpoint()<CR>",
  vim.tbl_extend("force", opts, { desc = "DAP: Toggle breakpoint" })
)
map(
  "n",
  "<C-F9>",
  "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Condition: '))<CR>",
  vim.tbl_extend("force", opts, { desc = "DAP: Toggle conditional breakpoint" })
)
map(
  "n",
  "<C-S-A-F9>",
  "<Cmd>lua require'dap'.clear_breakpoints()<CR>",
  vim.tbl_extend("force", opts, { desc = "DAP: Clear all breakpoints" })
)
map("n", "<F10>", "<Cmd>lua require'dap'.step_over()<CR>", vim.tbl_extend("force", opts, { desc = "DAP: Step over" }))
map("n", "<F11>", "<Cmd>lua require'dap'.step_into()<CR>", vim.tbl_extend("force", opts, { desc = "DAP: Step into" }))
map("n", "<S-F11>", "<Cmd>lua require'dap'.step_out()<CR>", vim.tbl_extend("force", opts, { desc = "DAP: Step out" }))
-- map("n", "<F12>", "<Cmd>lua require'dap'.step_out()<CR>", vim.tbl_extend("force"DAP: ""}))
map(
  "n",
  "<leader>dr",
  "<Cmd>lua require'dap'.repl.toggle()<CR>",
  vim.tbl_extend("force", opts, { desc = "DAP: Toggle REPL" })
)
map(
  "n",
  "<leader>dl",
  "<Cmd>lua require'dap'.run_last()<CR>",
  vim.tbl_extend("force", opts, { desc = "DAP: Run last" })
)
map(
  "n",
  "<leader>dt",
  "<Cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>",
  vim.tbl_extend("force", opts, { desc = "DAP: Run nearest test" })
)

-- map("n", "<leader>de", function () 
-- local dap = require("dap")
--   local var = vim.fn.expand("<cword>")
--   dap.set_variable(var)
--
-- end, vim.tbl_extend("force", opts, { desc = "DAP: Edit variable under cursor"}))

-- DAP UI mappings

map("n", "<leader>du", function()
  require("dapui").toggle()
end, vim.tbl_extend("force", opts, { desc = "DAP: Toggle UI" }))

map({ "n", "v" }, "<leader>dw", function()
  require("dapui").eval(nil, { enter = true })
end, vim.tbl_extend("force", opts, { desc = "DAP: Add word under cursor to Watches" }))

map({ "n", "v" }, "Q", function()
  require("dapui").eval()
end, vim.tbl_extend("force", opts, { desc = "DAP: Hover/eval a single value (opens a tiny window instead of expanding the full object)" }))
