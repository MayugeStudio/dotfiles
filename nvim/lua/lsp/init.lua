vim.lsp.enable({ 'luals', 'gopls', 'clangd', 'ts_ls'})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local buf = args.buf
    local mapn = function(lhs, rhs, desc)
      vim.keymap.set('n', lhs, rhs, { buffer = buf, silent = true, desc = desc })
    end
    local mapi = function(lhs, rhs, desc)
      vim.keymap.set('i', lhs, rhs, { buffer = buf, silent = true, desc = desc })
    end

    mapn('gd', vim.lsp.buf.definition, 'Go to definition')
    mapn('gD', vim.lsp.buf.declaration, 'Go to declaration')
    mapn('[d', function () vim.diagnostic.jump({ count = -1, float = true }) end, 'Next diagnostic')
    mapn(']d', function () vim.diagnostic.jump({ count = 1, float = true }) end, 'Next diagnostic')

    -- mapn('<leader>e', vim.diagnostic.open_float, 'Show diagnostic')
    mapn('<leader>q', vim.diagnostic.setloclist, 'Diagnostics to loclist')

    mapi('<C-l>', vim.lsp.completion.get, 'Trigger completion')

    vim.lsp.completion.enable(true, args.data.client_id, buf, { autotrigger = true })

    -- vim.api.nvim_create_autocmd('TextChangedI', {
    --   buffer = buf,
    --   callback = vim.lsp.completion.get,
    -- })
  end,
})



