return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  build = ':TSUpdate',
  init = function()
    vim.treesitter.language.register("bash", "zsh")
  end,
  config = function()
    require("nvim-treesitter").install({
      "c",
      "cpp",
      "lua",
      "vim",
      "vimdoc",
      "go",
      "markdown",
      "python",
      "rust",
      "typescript",
      "html",
      "css",
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function(args) 
        pcall(vim.treesitter.start, args.buf)
      end,
    })
  end,
}

