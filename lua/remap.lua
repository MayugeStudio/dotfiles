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
helper.nmap('<leader>f', '<Cmd>Telescope<CR>')
helper.nmap('<leader>B', '<Cmd>Compile<CR>')
helper.nmap('<leader>N', '<Cmd>NextError<CR>')
helper.nmap('<leader>T', vim.cmd.ToggleTerm)
helper.tmap('<C-\\><C-\\>', '<C-\\><C-n>')

-- move
helper.nmap('H', '^')
helper.nmap('L', '$h')
helper.vmap('H', '^')
helper.vmap('L', '$h')

-- mark
helper.nmap('<C-m>', 'mT')
helper.nmap('<C-i>', '`T')

-- jump
helper.nmap('M', '%')

-- search
helper.nmap('<leader>s', ':%s//g<Left><Left>')

helper.nmap('?', '<Cmd>noh<CR>')

-- neogit
helper.nmap('<C-G>', ':Neogit<CR>')

