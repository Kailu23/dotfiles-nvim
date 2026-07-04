return {
  "stevearc/oil.nvim",
  opts = {},
  config = function()
    local opts = require "configs.oil-nvim-config"

    require("oil").setup(opts)
  end,
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
