vim.g.mapleader = " "

local helper = {}
--keymap
for _, mode in pairs({'n', 'v', 'i', 's', 'o', 'c', 't', 'x'}) do
	helper[mode .. 'map'] = function(lhs, rhs, opts)
		vim.keymap.set(mode, lhs, rhs, opts or { silent = true })
	end
end

-- cmd
helper.nmap('<leader>e', '<Cmd>Fern %:h -drawer<CR>')
helper.nmap('<leader>f', '<Cmd>Telescope find_files<CR>')
helper.nmap('<leader>T', vim.cmd.ToggleTerm)
helper.tmap('<C-\\><C-\\>', '<C-\\><C-n>')

helper.nmap('<C-l>', '<Cmd>bn<CR>')
helper.nmap('<C-h>', '<Cmd>bp<CR>')

-- mark
helper.nmap('<C-m>', 'mT')
helper.nmap('<C-i>', '`T')

-- jump
helper.nmap('M', '%')

-- search
helper.nmap('<leader>s', ':%s//g<Left><Left>')

helper.nmap('?', '<Cmd>noh<CR>')

