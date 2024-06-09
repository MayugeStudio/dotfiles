vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.wrap = false 
vim.o.signcolumn = 'yes'
vim.o.smartindent = true
vim.o.showcmd = true
vim.o.smartcase = true
vim.o.showmatch = false
vim.o.helplang = 'ja', 'en'
vim.o.clipboard = 'unnamedplus'
vim.o.number = true
vim.o.autoindent = true
vim.o.smartindent = true

vim.api.nvim_exec("highlight SignColumn ctermbg=black", false)
