local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    { 'nvim-telescope/telescope.nvim', tag='0.1.5', dependencies = 'nvim-lua/plenary.nvim' },
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
    { 'lambdalisue/fern.vim', event = 'VeryLazy'},
    {  'ej-shafran/compile-mode.nvim', event = 'VeryLazy', branch = 'latest', dependencies = 'nvim-lua/plenary.nvim' },
    { 'akinsho/toggleterm.nvim', event = 'VeryLazy', version = '*', opts = { direction='horizontal', }, },
    { "blazkowolf/gruber-darker.nvim", opts = { italic = { strings = false, comments = false, operators = false, folds = false } } },
    {
      "NeogitOrg/neogit",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "nvim-telescope/telescope.nvim", -- optional
      },
      config = true
    },
    { 'kvrohit/rasmus.nvim' },
    { 'rose-pine/neovim', name = 'rose-pine' },
    { "neanias/everforest-nvim",
      version = false,
      lazy = false,
      priority = 1000, -- make sure to load this before all the other start plugins
    },
    { "Yazeed1s/minimal.nvim",
      priority = 1000,
    }
})

require('plugins')
