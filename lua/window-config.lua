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
