vim.g.mapleader = " "

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.wrap = false
vim.o.expandtab = true
vim.o.swapfile = false
vim.o.laststatus = 2
vim.o.cmdheight = 1

vim.o.signcolumn = 'number'
vim.o.shiftwidth = 2

vim.o.smartindent = true
vim.o.showcmd = true
vim.o.smartcase = true
vim.o.showmatch = false
vim.o.showtabline = 1
vim.o.helplang = 'en'
vim.o.clipboard = 'unnamedplus'

vim.opt.shada = "!,'100,<50,s10,h"

if vim.fn.has("win32") == 1 then
  vim.opt.shell = "bash"
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellxquote = ""
end
