vim.g.mapleader = " "

vim.env.PATH = vim.fn.expand('$HOME/go/bin') .. ':' .. vim.env.PATH

vim.o.number = true
vim.o.relativenumber = true

vim.o.background = "dark"
vim.o.tabstop = 2

vim.o.wrap = false

vim.o.expandtab = true
vim.o.swapfile = false
vim.o.laststatus = 2
vim.o.cmdheight = 1

vim.opt.scrolloff = 8
vim.o.signcolumn = 'number'
vim.o.shiftwidth = 2

vim.o.smartindent = true
vim.o.showcmd = true
vim.o.smartcase = true
vim.o.showmatch = false
vim.o.showtabline = 1
vim.o.helplang = 'en'
vim.o.clipboard = 'unnamedplus'

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.shada = "!,'100,<50,s10,h"
vim.opt.swapfile = false
vim.opt.backup = true

vim.o.updatetime = 1000
vim.o.completeopt = 'menu,menuone,noselect,popup'

if vim.fn.has("win32") == 1 then
  vim.opt.shell = "bash"
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellxquote = ""
end

vim.api.nvim_create_user_command(
  'Here',
  function() vim.cmd(":lcd %:h") end,
  { desc = "" }
)
