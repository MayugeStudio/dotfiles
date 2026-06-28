return {
  'saghen/blink.cmp',
  version = '1.*',
  opts = {
    keymap = {
      preset = 'super-tab',
      ['<C-space>'] = {},
      ['<C-l>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ["<C-u>"] = { "scroll_documentation_up", "fallback" },
      ["<C-d>"] = { "scroll_documentation_down", "fallback" },
      -- ['<C-u>'] = { 'scroll_signature_up', 'fallback' },
      -- ['<C-d>'] = { 'scroll_signature_down', 'fallback' },
    },
    appearance = {
      nerd_font_variant = 'normal',
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    signature = {
      enabled = true,
    },
    completion = {
      menu = {
        draw = {
          columns = {
            { "label", "label_description" }
          }
        }
      },
      documentation = {
        auto_show = true,
      },
    },
  },
}
