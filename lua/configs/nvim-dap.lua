local dap = require "dap"

local mason_path = vim.fn.stdpath "data" .. "/mason/packages/netcoredbg/netcoredbg/netcoredbg.exe"

local netcoredbg_adapter = {
  type = "executable",
  command = mason_path,
  args = { "--interpreter=vscode" },
  options = {
    detached = true,
  },
}

dap.set_log_level "TRACE"
dap.adapters.netcoredbg = netcoredbg_adapter -- needed for normal debugging
dap.adapters.coreclr = netcoredbg_adapter -- needed for unit test debugging
-- dap.defaults.netcoredbg_adapter.terminal_win_cmd = "50vsplit new"
-- dap.defaults.netcoredbg_adapter.focus_terminal = true
-- dap.defaults.netcoredbg_adapter.force_external_terminal = true
-- dap.defaults.netcoredbg_adapter.external_terminal = {
--   command = "bash.exe",
--   args = { "-e" },
-- }

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
      -- return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/src/", "file")
      return require("dap-dll-autopicker").build_dll_path()
    end,
    console = "integratedTerminal",
    stopAtEntry = true,
    runInTerminal = true,
    -- justMyCode = false,
    -- stopAtEntry = false,
    -- -- program = function()
    -- --   -- todo: request input from ui
    -- --   return "/path/to/your.dll"
    -- -- end,
    -- env = {
    --   ASPNETCORE_ENVIRONMENT = function()
    --     -- todo: request input from ui
    --     return "Development"
    --   end,
    --   ASPNETCORE_URLS = function()
    --     -- todo: request input from ui
    --     return "http://localhost:5050"
    --   end,
    -- },
    -- cwd = function()
    --   -- todo: request input from ui
    --   return vim.fn.getcwd()
    -- end,
  },
}
