return {
  "Issafalcon/lsp-overloads.nvim",
  event = "LspAttach",
  config = function()
    require ("configs.lsp-overloads-config")
  end,
}
