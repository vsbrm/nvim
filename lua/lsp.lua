vim.lsp.enable({'clangd', 'lua_ls', 'rust-analyzer'})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.opt.completeopt = { 'noinsert', 'menu', 'menuone', 'fuzzy', 'popup' }
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

vim.diagnostic.config({
  virtual_lines = {
    current_line = true
  }
})
