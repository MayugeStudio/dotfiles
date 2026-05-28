return {
  'saghen/blink.cmp',
  version = '*',
  opts = {
    keymap = {
      preset = 'default',
      ['<C-space>'] = {},
      ['<C-l>'] = { 'show', 'show_documentation', 'hide_documentation' },
    },
    appearance = {
      nerd_font_variant = 'mono',
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
      }
    },
  },
}
