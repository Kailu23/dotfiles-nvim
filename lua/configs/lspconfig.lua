require("nvchad.configs.lspconfig").defaults()

-- local servers = { "html", "cssls", "lua-language-server", "emmet-ls" }
local servers = { "cssls", "lua-language-server", "emmet_language_server"}
vim.lsp.enable(servers)
vim.lsp.config("emmet", {})

-- read :h vim.lsp.config for changing options of lsp servers 
vim.lsp.config("roslyn", {})

vim.diagnostic.config(
  {
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
      }
    }
  }
)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})
