vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
vim.keymap.set("n", "<M-h>", "<C-w>h", { desc = "Window go left" })
vim.keymap.set("n", "<M-j>", "<C-w>j", { desc = "Window go down" })
vim.keymap.set("n", "<M-k>", "<C-w>k", { desc = "Window go up" })
vim.keymap.set("n", "<M-l>", "<C-w>l", { desc = "Window go right" })
