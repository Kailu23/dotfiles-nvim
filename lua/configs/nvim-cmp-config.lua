local cmp = require "cmp"
local opts = {}

opts = {
  window = {
    completion = {
      scrollbar = true,
      max_height = 12,
    },
  },
  mapping = {
    ["<C-a>"] = cmp.mapping.complete(),
  },
}

return opts
