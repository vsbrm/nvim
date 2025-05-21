return {
  "lewis6991/gitsigns.nvim",
  config = function()
    local gs = require("gitsigns")
    gs.setup({})
    local wk = require("which-key")
    wk.add({
      { "<leader>g", group = "git" },
      { "<leader>gh", group = "git hunk" },
      { "<leader>ghs", gs.stage_hunk, desc = "stage", mode = "n" },
      { "<leader>ghr", gs.reset_hunk, desc = "reset", mode = "n" },
      { "<leader>ghp", gs.preview_hunk, desc = "preview", mode = "n" },
      { "<leader>gb", group = "git buffer" },
      { "<leader>gbs", gs.stage_buffer, desc = "stage", mode = "n" },
      { "<leader>gbr", gs.reset_buffer, desc = "reset", mode = "n" },
      { "<leader>gt", group = "git toggle" },
      { "<leader>gtb", gs.toggle_current_line_blame, desc = "blame", mode = "n" }
    })
  end
}
