local dapui = require "dapui"
local dap = require "dap"
local highlight = vim.api.nvim_set_hl

--- open ui immediately when debugging starts
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end


highlight(0, "DapBreakpoint", { fg = "#FF0000"})
highlight(0, "DapStopped", { bg = "#3b3d0e", fg = ""})
-- https://emojipedia.org/en/stickers/search?q=circle
vim.fn.sign_define("DapBreakpoint", {
  text = "🔴",
  texthl = "DapBreakpoint",
})

vim.fn.sign_define("DapBreakpointCondition", {
    text = "🟥",
    texthl = "DapBreakpoint"
})
-- vim.fn.sign_define('DapBreakpoint', { text='🛑', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })

vim.fn.sign_define("DapStopped", {
  text = "🔴",
  texthl = "DapBreakpoint",
  linehl = "DapStopped",
  numhl = "DapStopped",
})
vim.fn.sign_define("DapBreakpointRejected", {
  text = "⭕",
  texthl = "DapBreakpoint",
  linehl = "DapStopped",
  numhl = "DapStopped",
})

-- default configuration
dapui.setup {
  expand_lines = true,
  controls = { enabled = false },
  floating = { border = "rounded" },

  render = {
    max_type_length = 60,
    max_value_lines = 200,
  },

  layouts = {
    {
      elements = {
        { id = "scopes", size = 1.0 },
      },
      size = 15,
      position = "bottom",
    },
  },
}
