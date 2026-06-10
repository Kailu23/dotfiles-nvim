return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  dependencies = { "rafamadriz/friendly-snippets" },

  version = "1.*",

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
          score_offset = 90,
        },
        snippets = {
          name = "snippets",
          enabled = true,
          max_items = 15,
          min_keyword_length = 2,
          score_offset = 95,
          module = "blink.cmp.sources.snippets",
          opts = {
            extended_filetypes = {
              gitcommit = {},
            },
          },
        },
      },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },
    signature = { enabled = false },
  },
  opts_extend = { "sources.default" },
}
