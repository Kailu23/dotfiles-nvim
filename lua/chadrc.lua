-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "eldritch-custom",

  hl_override = {
    Type = { bold = true, italic = false },
    ["@comment"] = { italic = true },

    --- https://neovim.io/doc/user/treesitter.html#treesitter-highlight-groups
    ["@keyword"] = { italic = true },
    ["@function.method"] = { italic = true },
    ["@function.method.call"] = { bold = true },
  },
}

M.ui = {
    telescope = {
        style = "bordered"
    }
}
M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

M.mason = {
  pkgs = require("mason_packages").get(),
}
return M
