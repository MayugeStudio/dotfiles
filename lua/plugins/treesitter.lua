return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()

    require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "go", "markdown", "python", "rust", "typescript", "html", "css" },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
        },
        indent = {
          enable = false,
        }
    })
  end
}

