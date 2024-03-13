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

-- set alternative for :
vim.keymap.set('n', '<leader><leader>', ':', {desc = "run command"})
