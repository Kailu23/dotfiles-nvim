return {
  "mason-org/mason.nvim",
  opts = {
    log_level = vim.log.levels.DEBUG,
    registries = {
      "github:mason-org/mason-registry",
      "github:Crashdummyy/mason-registry",
    },
    ensure_installed = {
    },
  },
}
