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

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

M.mason = {
  pkgs = {
    "bash-language-server",
    "bicep-lsp",
    "clangd",
    "codelldb",
    "csharpier",
    "css-lsp",
    "css-variables-language-server",
    "cssmodules-language-server",
    "emmet-language-server",
    "emmylua_ls",
    "eslint-lsp",
    "html-lsp",
    "js-debug-adapter",
    "json-lsp",
    "local-lua-debugger-vscode",
    "lua-language-server",
    "markdown-oxide",
    "netcoredbg",
    "prettier",
    "roslyn",
    "rust-analyzer",
    "sqlls",
    "sql-formatter",
    "stylua",
    "typescript-language-server",
    "xmlformatter",
    "zls",
    "yaml-language-server",
  },
}
return M
