return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function(_, opts)
    local autopairs = require "nvim-autopairs"
    local config = require("configs.nvim-autopairs")

    opts = vim.tbl_extend("force", opts, config)

    autopairs.setup(opts)
  end,
}
