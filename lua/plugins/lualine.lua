return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = false,
        theme = "auto", -- Can also be "auto" to detect automatically.
        -- theme = 'dracula',
      },
      sections = {
        lualine_a = {'branch'},
        lualine_b = {
          {
            'filename',
            path = 4,
          }
        },
        lualine_c = {'diff'},
        lualine_x = {'filetype'},
        lualine_y = {'encoding'},
        lualine_z = {'location', 'progress'}
      },
    })
  end
}

