return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    local config = require "configs.nvim-cmp-config"

    opts = vim.tbl_deep_extend('force', opts, config)

    return opts
  end,
  enabled = false,
}
