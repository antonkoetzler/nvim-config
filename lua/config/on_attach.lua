-- Function for the on_attach argument of LSPs (see lua/config/plugins.lua).
return function(_, bufnr)
  function Safe_snacks_rename()
    local ok, err = pcall(require("snacks").rename.rename_file)
    if not ok then
      vim.notify("Snacks rename error: " .. err, vim.log.levels.ERROR)
    end
  end

  local opts = { noremap = true, silent = true }

  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ge', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

  -- Snacks.nvim file rename (updates imports with native LSP)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cR', '<cmd>lua Safe_snacks_rename()<CR>',
    { noremap = true, silent = true })

  vim.api.nvim_create_autocmd('BufWritePre', {
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format({ bufnr = bufnr })
    end,
  })

  vim.api.nvim_create_autocmd({ 'BufLeave', 'BufEnter' }, {
    callback = function(_)
      local clients = vim.lsp.get_active_clients()
      for _, client in pairs(clients) do
        if client.attached_buffers[bufnr] then
          vim.lsp.buf_attach_client(bufnr, client.id)
        end
      end
    end,
  })
end
