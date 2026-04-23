return {
  "seblyng/roslyn.nvim",
  lazy = "LspAttach",
  ---@module 'roslyn.config'
  ---@type RoslynNvimConfig
  ft = { "cs", "razor" },
  config = function ()
    require("configs.lsp.roslyn")
  end,
  opts = {
    -- your configuration comes here; leave empty for default settings
  },
}
