local map = vim.keymap.set
local opts = { noremap = false, silent = true }

map("n", "<leader>wa", "<CMD>lua require(\"workspaces\").add()<CR>", vim.tbl_extend("force", opts, {desc = "Workspaces: Add current directory"}))
map("n", "<leader>wA", "<CMD>lua require(\"workspaces\").add(vim.fn.input('Workspace path: '),vim.fn.input('Workspace name: '))<CR>", vim.tbl_extend("force", opts, {desc = "Workspaces: Add"}))
    -- Add a workspace with the given name and path. If name or path are nil, the
    -- current directory will be used to set the missing parameter.

map("n", "<leader>wr", "<CMD>lua require(\"workspaces\").remove(vim.fn.input('Workspace name: '))<CR>", vim.tbl_extend("force", opts, {desc = "Workspaces: Remove"}))
    -- Remove a workspace with the given name.

map("n", "<leader>wl", "<CMD>lua require(\"workspaces\").list()<CR>", vim.tbl_extend("force", opts, {desc = "Workspaces: List"}))
    -- Print all workspaces to the commandline.

map("n", "<leader>wo", "<CMD>lua require(\"workspaces\").open()<CR>", vim.tbl_extend("force", opts, {desc = "Workspaces: Open"}))
    -- Open a workspace with the given name. If name is nil, vim.ui.select() will be
    -- used as a selection interface for opening a workspace.
