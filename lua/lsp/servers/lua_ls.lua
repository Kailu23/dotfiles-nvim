return {
  exit_timeout = false,
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },

      workspace = {
        checkThirdParty = false,

        library = {
          vim.env.VIMRUNTIME,
          "/usr/share/hypr/stubs",
          "/usr/share/nvim/runtime/lua",
          "/home/kailu/.local/share/nvim/lazy/ui/nvchad_types",
          "/home/kailu/.local/share/nvim/lazy/lazy.nvim/lua/lazy",
          "${3rd}/luv/library"
        },
      },

      diagnostics = {
        globals = {
          "vim",
          "hl",
        },
      },

      telemetry = {
        enable = false,
      },
    },
  },
}
