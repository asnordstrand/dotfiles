require('plugins')
require('statusline')

local g = vim.g
local cmd = vim.cmd
local utils = require('utils')
local opt = utils.opt
local map = utils.map

-- Color scheme
opt('o', 'termguicolors', true)
opt('o', 'background', 'dark')
cmd [[colorscheme gruvbox]]

-- Settings
local indent = 4
cmd [[filetype plugin indent on]]
opt('w', 'number', true)
opt('w', 'cursorline', true)
opt('o', 'incsearch', true)
opt('o', 'ignorecase', true)
opt('o', 'laststatus', 2)
opt('b', 'tabstop', indent)
opt('b', 'softtabstop', indent)
opt('b', 'shiftwidth', indent)
opt('b', 'autoindent', true)
opt('b', 'expandtab', true)
opt('b', 'smartindent', true)

-- Keybindings
map('n', '<leader>f', '<cmd>GFiles<cr>', {noremap = true})
map('n', '<leader>F', '<cmd>Files<cr>', {noremap = true})
map('n', '<leader>b', '<cmd>Buffers<cr>', {noremap = true})
map('n', '<leader>h', '<cmd>History<cr>', {noremap = true})

-- coc.nvim extensions
g.coc_global_extensions = {
    'coc-pairs',
    'coc-clangd',
    'coc-rust-analyzer',
    'coc-sourcekit',
    'coc-json',
}
