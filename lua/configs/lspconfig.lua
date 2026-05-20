require("nvchad.configs.lspconfig").defaults()

-- local servers = { "html", "cssls", "lua-language-server", "emmet-ls" }
local servers = {
  "bashls",
  "bicep",
  "clangd",
  "cssls",
  "css_variables",
  "cssmodules_ls",
  "emmet_ls",
  "emmylua_ls",
  "eslint",
  "html",
  "jsonls",
  "lua_ls",
  "markdown_oxide",
  "rust_analyzer",
  "sqlls",
  "stylua",
  "ts_ls",
  "zls",
  "yamlls",
  "tailwindcss-language-server",
  "phpactor",
}
-- vim.lsp.config("emmet", {})
-- vim.lsp.config("typescript-language-server", {
--   cmd = { "typescript-language-server", "--stdio" },
--   filetypes = { "javascript", "typescript" },
-- })
vim.lsp.enable(servers)

vim.lsp.config("roslyn_ls", {
  filetypes = { "razor", "cs" },
  settings = {
    ["csharp|inlay_hints"] = {
      csharp_enable_inlay_hints_for_implicit_object_creation = true,
      csharp_enable_inlay_hints_for_implicit_variable_types = true,
      csharp_enable_inlay_hints_for_lambda_parameter_types = true,
      csharp_enable_inlay_hints_for_types = true,
      dotnet_enable_inlay_hints_for_indexer_parameters = true,
      dotnet_enable_inlay_hints_for_literal_parameters = true,
      dotnet_enable_inlay_hints_for_object_creation_parameters = true,
      dotnet_enable_inlay_hints_for_other_parameters = true,
      dotnet_enable_inlay_hints_for_parameters = true,
      dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
      dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
      dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
    },
    ["csharp|background_analysis"] = {
      dotnet_analyzer_diagnostics_scope = "openFiles",
      dotnet_compiler_diagnostics_scope = "openFiles",
    },
  },
})

vim.lsp.enable("roslyn_ls")

-- read :h vim.lsp.config for changing options of lsp servers
vim.diagnostic.config {
  underline = false,
  virtual_text = false,
  update_in_insert = false,
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = " ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
}