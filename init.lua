local cmd = vim.cmd

require('plugins')

cmd [[colorscheme gruvbox]]

options = { noremap = true }
vim.api.nvim_set_keymap('n', '<Leader>F', ':Files<CR>', options)
