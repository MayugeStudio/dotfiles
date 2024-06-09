vim.g.mapleader = " "

local helper = {}
--keymap
for _, mode in pairs({'n', 'v', 'i', 's', 'o', 'c', 't', 'x'}) do
	helper[mode .. 'map'] = function(lhs, rhs, opts)
		vim.keymap.set(mode, lhs, rhs, opts or { silent = true })
	end
end

-- cmd
helper.nmap('<leader>e', ':Fern %:h<CR>')
helper.nmap('<leader>f', ':Telescope<CR>')
helper.nmap('<leader>pv', vim.cmd.Ex)
helper.nmap('<leader>B', ':vsplit<CR><C-w>l:term<CR>')
helper.tmap('<C-\\><C-\\>', '<C-\\><C-n>')

-- move
helper.nmap('H', '^')
helper.nmap('L', '$')

-- complement
helper.imap('<S-Tab>', '<C-n>')
