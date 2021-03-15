local execute = vim.api.nvim_command
local fn = vim.fn
local cmd = vim.cmd

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

-- Auto install packer.nvim
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute('packadd packer.nvim')
end

-- Required because packer is installed in opt/
cmd [[packadd packer.nvim]]

-- Automatically run :PackerCompile when plugins.lua changes
cmd 'autocmd BufWritePost plugins.lua PackerCompile'

return require('packer').startup(function()
  -- Packer
  use { 'wbthomason/packer.nvim', opt = true }
  
  -- Intellisense
  use {
    'neoclide/coc.nvim',
    branch = 'release',
    config = [[require('config.coc')]],
  }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim', },
    config = [[require('config.telescope')]],
  }

  -- Color scheme
  use 'lifepillar/vim-gruvbox8'
end)
