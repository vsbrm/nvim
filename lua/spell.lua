vim.opt.spelllang = 'en'
vim.opt.spell = true

local wk = require("which-key")
wk.add({
  { "<leader>s", group = "spell" },
  { "<leader>se", "<cmd>setlocal spell spelllang=en<cr>", desc = "Set English", mode = "n" },
  { "<leader>sf", "<cmd>setlocal spell spelllang=fi<cr>", desc = "Set Finnish", mode = "n" },
  { "<leader>sr", "<cmd>setlocal spell spelllang=ru<cr>", desc = "Set Russian", mode = "n" },
  { "<leader>st", "<cmd>setlocal spell!<cr>", desc = "Toggle Spell", mode = "n" }
})
