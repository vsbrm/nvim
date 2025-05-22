-- set space as a leader key globally
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- configure indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- show line numers
vim.opt.nu = true
vim.opt.relativenumber = true

-- set alternative for :
vim.keymap.set('n', '<leader><leader>', ':', {desc = "run command"})
-- highlight current line
vim.opt.cursorline = true

-- Terminal mode configuration
-- use Esc to exit terminal mode
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])

vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
    vim.opt_local.spell = false
  end,
})
