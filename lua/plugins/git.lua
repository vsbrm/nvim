return {
  "lewis6991/gitsigns.nvim",
  config = function()
    local gs = require("gitsigns")
    gs.setup({})
    vim.keymap.set('n', '<leader>ghs', gs.stage_hunk, {desc = "stage hunk"})
    vim.keymap.set('n', '<leader>ghr', gs.reset_hunk, {desc = "reset hunk"})
    vim.keymap.set('v', '<leader>ghs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, {desc = "stage hunk"})
    vim.keymap.set('v', '<leader>ghr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, {desc = "reset hunk"})
    vim.keymap.set('n', '<leader>gbs', gs.stage_buffer, {desc = "stage buffer"})
    vim.keymap.set('n', '<leader>gbr', gs.reset_buffer, {desc = "reset buffer"})
    vim.keymap.set('n', '<leader>ghp', gs.preview_hunk, {desc = "preview hunk"})
    vim.keymap.set('n', '<leader>gbl', function() gs.blame_line{full=true} end, {desc = "blame line"})
    vim.keymap.set('n', '<leader>gtb', gs.toggle_current_line_blame, {desc = "toggle blame"})
    vim.keymap.set('n', '<leader>ghd', gs.diffthis, {desc = "diff hunk"})
    vim.keymap.set('n', '<leader>ghD', function() gs.diffthis('~') end, {desc = "diffhis"})
    vim.keymap.set('n', '<leader>gtd', gs.toggle_deleted, {desc = "toggle deleted"})
  end
}
