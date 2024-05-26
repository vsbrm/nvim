local wk = require('which-key')

wk.register({
  w = {
    name = 'window',
    v = { '<C-w>v', "vertical split"},
    s = { '<C-w>s', "split"},
    q = { '<C-w>q', "quit window"},
    h = { '<C-w>h', "go left"},
    j = { '<C-w>j', "go down"},
    k = { '<C-w>k', "go up"},
    l = { '<C-w>l', "go right"},
    w = { '<C-w>w', "switch window"}
  }
}, { prefix = '<leader>'})

vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
