require("plugins")

-- Color scheme
vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd("colorscheme gruvbox8")

-- Settings
local indent = 2
vim.wo.number = true
vim.wo.cursorline = true
vim.wo.cursorline = true
vim.wo.wrap = false
vim.bo.tabstop = indent
vim.bo.shiftwidth = indent
vim.bo.softtabstop = indent
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.laststatus = 2

-- Indentation overrides
vim.api.nvim_command([[
  augroup file_type_indentation
    autocmd FileType c,cpp setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType rust setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
  augroup end
]])
