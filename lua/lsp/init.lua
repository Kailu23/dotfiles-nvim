require("nvchad.configs.lspconfig").defaults()

local lspPath = vim.fn.stdpath('config') .. "/lua/lsp/servers"

for _, file in ipairs(vim.fn.readdir(lspPath)) do
    if file:match("%.lua$") then
        local server = file:gsub("%.lua$", "")

        local config = require("lsp.servers." .. server)

        vim.lsp.config(server, config)
        vim.lsp.enable(server)
    end
end

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
