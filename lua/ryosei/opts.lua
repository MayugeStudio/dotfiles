vim.g.mapleader = " "

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.wrap = false
vim.o.expandtab = true
vim.o.swapfile = false

vim.o.signcolumn = 'number'
vim.o.shiftwidth = 4

vim.o.smartindent = true
vim.o.showcmd = true
vim.o.smartcase = true
vim.o.showmatch = false
vim.o.showtabline = 1
vim.o.helplang = 'en'
vim.o.clipboard = 'unnamedplus'

if vim.fn.has("win32") == 1 then
    vim.opt.shell = '"C:/Program Files/Git/bin/bash.exe"' -- Adjust path if different
    vim.opt.shellcmdflag = '-c'
    vim.opt.shellredir = '>%s 2>&1'
    vim.opt.shellquote = ''
    vim.opt.shellxescape = ''
    vim.opt.shellxquote = ''
    vim.opt.shellpipe = '2>&1| tee'
end
