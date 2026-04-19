local lspconfig = require "lspconfig"

-- Set up capabilities
local default_capabilities = vim.lsp.protocol.make_client_capabilities()
local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if status_ok then
  default_capabilities = vim.tbl_deep_extend("force", default_capabilities, cmp_nvim_lsp.default_capabilities())
end

-- Apply to all LSP servers by default
lspconfig.util.default_config = vim.tbl_deep_extend("force", lspconfig.util.default_config, {
  capabilities = default_capabilities,
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp-attach", {}),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    local capabilities = client.server_capabilities
    local bufnr = args.buf

    if capabilities.signatureHelpProvider then
      local lsp_overloads_ok, lsp_overloads = pcall(require, "lsp-overloads")
      if lsp_overloads_ok then
        lsp_overloads.setup(client, {
          ui = {
            close_events = { "CursorMoved", "CursorMovedI", "InsertCharPre", "InsertLeave", "TextChangedI"},
            floating_window_above_cur_line = true,
            silent = true,
            border = "rounded",
          },
          display_automatically = true,
        })
      end

      vim.keymap.set(
        "n",
        "<A-s>",
        "<CMD>LspOverloadsSignature<CR>",
        { noremap = true, silent = true, desc = "Show signature help with overloads", buffer = args.buf }
      )

      vim.keymap.set(
        "i",
        "<A-s>",
        "<cmd>LspOverloadsSignature<CR>",
        -- function() vim.lsp.buf.signature_help() end,
        { noremap = true, silent = true, desc = "Show signature help with overloads", buffer = args.buf }
      )
    end
  end,
})
