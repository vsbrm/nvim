return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-symbols.nvim' },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find file"})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "find with grep"})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "find buffer"})
    end
  }
}
