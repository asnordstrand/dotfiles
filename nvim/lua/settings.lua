vim.o.completeopt = "menuone,noinsert,noselect"
vim.cmd("set shortmess+=c")

-- Color scheme
vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd("colorscheme gruvbox8")

vim.o.fileencoding = "utf-8"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.showmode = false
vim.wo.signcolumn = "yes"
vim.o.updatetime = 300
vim.hidden = true

vim.wo.number = true
vim.wo.cursorline = true
vim.wo.wrap = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.laststatus = 2
vim.o.clipboard = "unnamedplus"

local indent = 2
vim.o.tabstop = indent
vim.o.shiftwidth = indent
vim.o.softtabstop = indent
vim.bo.expandtab = true
vim.bo.smartindent = true

vim.api.nvim_command([[
  augroup file_type_indentation
    autocmd Filetype c,cpp,cmake setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
    autocmd Filetype rust setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
  augroup end
]])
