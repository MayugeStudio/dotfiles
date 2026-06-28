vim.g.mapleader = " "

local helper = {}
--keymap
for _, mode in pairs({'n', 'v', 'i', 's', 'o', 'c', 't', 'x'}) do
	helper[mode .. 'map'] = function(lhs, rhs, opts)
		vim.keymap.set(mode, lhs, rhs, opts or { silent = true })
	end
end

local no_preview = function()
  return require('telescope.themes').get_dropdown({
    borderchars = {
      { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
      prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
      results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
      preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    },
    width = 0.8,
    previewer = false,
    prompt_title = false
  })
end

vim.api.nvim_create_user_command(
  'DropdownTelescope',
  function()
    require("telescope.builtin").find_files(no_preview())
  end,
  {}
)
-- cmd
helper.nmap('<leader>f', '<Cmd>DropdownTelescope<CR>')
helper.nmap('<leader>b', '<Cmd>Telescope buffers<CR>')
helper.nmap('<leader>g', '<Cmd>Telescope live_grep<CR>')
helper.tmap('<C-\\><C-\\>', '<C-\\><C-n>')
helper.tmap('<C-¥><C-¥>', '<C-\\><C-n>')

-- helper.nmap('<C-l>', '<Cmd>bn<CR>')
-- helper.nmap('<C-h>', '<Cmd>bp<CR>')

-- mark
helper.nmap('<C-m>', 'mT')
helper.nmap('<C-i>', '`T')

-- jump
helper.nmap('M', '%')

-- search
helper.nmap('<leader>s', ':%s//g<Left><Left>')

helper.nmap('?', '<Cmd>noh<CR>')

