require "nvchad.options"

-- add yours here!

-- Set the width of the line number column
vim.opt.numberwidth = 5

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Number of lines to keep above and below the cursor
vim.opt.scrolloff = 64
vim.o.scroll = 15

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"
-- set shell
vim.opt.shell = "cmd.exe"
vim.opt.shellcmdflag = "/c"
-- vim.opt.shellquote = ""
-- vim.opt.shellxquote = ""
vim.opt.shellslash = false
-- configer make
vim.g.dotnet_errors_only = true
vim.g.dotnet_show_project_file = false
