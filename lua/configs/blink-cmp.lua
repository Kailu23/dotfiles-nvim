local opts = {}

opts = {
  keymap = {
    preset = "none",
    ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
    ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },

    ["<C-a>"] = {
      "show",
      "show_documentation",
      "hide_documentation",
    },
    ["<C-e>"] = { "hide", "fallback" },

    ["<CR>"] = { "select_and_accept", "fallback" },
  },

  appearance = {
    nerd_font_variant = "mono",
  },

  completion = {
    menu = {
      border = "rounded",
    },
    documentation = {
      window = {
        border = "rounded",
      },
    },
    keyword = {
      range = "full",
    },
    list = {
      selection = {
        auto_insert = false,
      },
    },
  },

  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
    providers = {
      lsp = {
        name = "lsp",
        enabled = true,
        module = "blink.cmp.sources.lsp",
        min_keyword_length = 0,
      },
      snippets = {
        name = "snippets",
        enabled = true,
        max_items = 15,
        min_keyword_length = 1,
        module = "blink.cmp.sources.snippets",
      },
      path = {
        opts = {
          get_cwd = function(_)
            return vim.fn.getcwd()
          end,
        },
      },
    },
  },

  fuzzy = { implementation = "prefer_rust_with_warning" },
  signature = { enabled = false },
}

return opts
