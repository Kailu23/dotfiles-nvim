require("nvchad.configs.lspconfig").defaults()

-- local servers = { "html", "cssls", "lua-language-server", "emmet-ls" }
local servers = { "cssls", "lua-language-server", "emmet_language_server", "typescript-language-server", "markdown_oxide", "clangd"}
vim.lsp.config("emmet", {})
vim.lsp.config("typescript-language-server", {
    cmd = {"typescript-language-server", "--stdio"},
    filetypes = {"javascript", "typescript"},
})
vim.lsp.enable(servers)

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
