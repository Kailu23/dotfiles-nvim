return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  dependencies = { "rafamadriz/friendly-snippets" },

  version = "1.*",

  opts = require("configs.blink-cmp"),
  opts_extend = { "sources.default" },
}
