return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {
    fast_wrap = {},
    disable_filetype = { "TelescopePrompt", "vim" },
  },
  config = function(_, opts)
    local autopairs = require "nvim-autopairs"
    autopairs.setup(opts)
  end,
}
