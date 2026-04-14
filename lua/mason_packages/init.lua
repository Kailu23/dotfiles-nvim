local M = {}

function M.get()
  local dap = require "mason_packages.dap"
  local formatters = require "mason_packages.formatters"
  local lsp = require "mason_packages.lsp"

  local final = {}

  table.move(dap, 1, #dap, #final + 1, final)
  table.move(formatters, 1, #formatters, #final + 1, final)
  table.move(lsp, 1, #lsp, #final + 1, final)
  return final
end

return M
