require "nvchad.autocmds"

vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = "Higlight selection on yank",
    pattern = "*",
    callback = function ()
        vim.hl.hl_op({higroup = 'IncSearch', timeout = 100})
    end,
})
