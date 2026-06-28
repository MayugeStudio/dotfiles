return {
  'nvim-telescope/telescope.nvim',
  tag='0.1.5',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function()

    require('telescope').setup({
      defaults={
        layout_config = {
          width=0.5
        },
        file_ignore_patterns={
          "node_modules/",
          "%.git/",
          ".git/",
          "%.exe",
          "%vendor"
        },
      },
      pickers = {
          find_files = {
              hidden = true,
          },
          buffers = {
            sort_mru = true,
            mappings = {
              i = {
                ["<C-d>"] = "delete_buffer",
              }
            }
          }
      }
  })
  end
}

