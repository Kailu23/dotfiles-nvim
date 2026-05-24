return {
  "Issafalcon/lsp-overloads.nvim",
  event = "LspAttach",
  config = function()
    local lsp_overloads = require "lsp-overloads"
    local opts = require "configs.lsp-overloads-config"
    lsp_overloads.setup(opts)
  end,
}
