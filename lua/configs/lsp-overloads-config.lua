local M = {}

M = {
  ui = {
    border = "rounded",
    floating_window_above_cur_line = true,
    max_height = 15,
  },
}

vim.keymap.set(
    { "n", "i"},
  "<A-s>",
  "<CMD>LspOverloads signature<CR>",
  { noremap = true, silent = true, desc = "Show signature help with overloads" }
)

return M
