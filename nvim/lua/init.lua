require('plugins')
require('coc')

local g = vim.g
local cmd = vim.cmd
local utils = require('utils')
local opt = utils.opt
local map = utils.map

-- Color scheme
opt('o', 'termguicolors', true)
opt('o', 'background', 'dark')
cmd [[colorscheme gruvbox8]]

-- Settings
local indent = 2
opt('w', 'number', true)
opt('w', 'cursorline', true)
opt('o', 'incsearch', true)
opt('o', 'ignorecase', true)
opt('o', 'laststatus', 2)
opt('o', 'hidden', true)
opt('b', 'tabstop', indent)
opt('b', 'softtabstop', indent)
opt('b', 'shiftwidth', indent)
opt('b', 'autoindent', true)
opt('b', 'expandtab', true)
opt('b', 'smartindent', true)
