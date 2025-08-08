return {
  "vague2k/vague.nvim",
  config = function()
    require("vague").setup({
        italic = false,
        transparent = true,
    })
    vim.cmd("colorscheme vague")
    vim.cmd(":hi statusline guibg=NONE")
  end
}
