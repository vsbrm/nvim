return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.clangd.setup({})
      lspconfig.rust_analyzer.setup {
        settings = {
          ['rust-analyzer'] = {
            check = {
                command = "clippy";
            },
            diagnostics = {
                enable = true;
            }
          }
        }
      }
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          vim.keymap.set('n', '<leader>ch', vim.lsp.buf.hover, { buffer = args.buf })
          vim.keymap.set('n', '<leader>cr', vim.lsp.buf.references, { buffer = args.buf })
          vim.keymap.set('n', '<leader>ci', vim.lsp.buf.implementation, { buffer = args.buf })
          vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = args.buf })
        end,
      })
      lspconfig.lua_ls.setup({})
    end
  },
}
