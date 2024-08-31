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
helper.nmap('<leader>B', ':Compile<CR>')
helper.nmap('<leader>N', ':NextError<CR>')
helper.nmap('<leader>T', vim.cmd.ToggleTerm)
helper.tmap('<C-\\><C-\\>', '<C-\\><C-n>')

-- move
helper.nmap('H', '^')
helper.nmap('L', '$')
helper.vmap('H', '^')
helper.vmap('L', '$')

helper.nmap('?', '<Cmd>noh<CR>')

-- neogit
helper.nmap('<C-G>', ':Neogit<CR>')

