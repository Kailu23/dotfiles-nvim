local nvlsp = require("nvchad.configs.lspconfig")
dofile(vim.g.base46_cache .. "lsp")
require("nvchad.lsp").diagnostic_config()

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        nvlsp.on_attach(nil, args.buf)
    end,
})

vim.lsp.config("*", {
    capabilities = nvlsp.capabilities,
    on_init = nvlsp.on_init,
})
local lspPath = vim.fn.stdpath('config') .. "/lua/lsp/servers"
local servers = {}

for _, file in ipairs(vim.fn.readdir(lspPath)) do
    if file:match("%.lua$") then
        local server = file:gsub("%.lua$", "")

        local config = require("lsp.servers." .. server)

        vim.lsp.config(server, config)
        table.insert(servers, server)
    end
end

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
