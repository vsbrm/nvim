vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu")
vim.keymap.set('n', '<leader><leader>', ':', {desc = "run command"})
