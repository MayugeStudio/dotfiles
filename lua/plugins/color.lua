-- return {
--   "vague2k/vague.nvim",
--  config = function()
--    require("vague").setup({
--        italic = false,
--        transparent = true,
--    })
--    vim.cmd("colorscheme slate")
--    vim.cmd(":hi statusline guibg=NONE")
--  end
--}

return {
  "neanias/everforest-nvim",
  config = function() 
    vim.cmd("colorscheme everforest")
  end
}

-- return {
--   "dracula/vim",
--   config = function()
--     vim.g.dracula_italic = false
--     vim.cmd("colorscheme dracula")
--     vim.cmd(":hi statusline guibg=NONE")
--   end
-- }
