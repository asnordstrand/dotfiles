local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
end

-- Automatically run :PackerCompile when plugins.lua changes
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

return require("packer").startup(function()
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- LSP
  use { "neovim/nvim-lspconfig", config = [[require("config.lsp")]], }

  -- Adds :LspInstall <language>
  use "kabouzeid/nvim-lspinstall"

  -- Autocompletion
  use {
    "hrsh7th/nvim-compe",
    requires = { "hrsh7th/vim-vsnip" },
    config = [[require("config.compe")]],
  }

  -- Tree-sitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = [[require("config.treesitter")]],
  }

  -- Fuzzy finder
  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/popup.nvim", "nvim-lua/plenary.nvim", },
    config = [[require("config.telescope")]],
  }

  -- Autopairs
  use { "windwp/nvim-autopairs", config = [[require("config.npairs")]], }

  -- Statusline
  use { "hoob3rt/lualine.nvim", config = [[require("config.lualine")]], }
  
  -- File explorer
  use { "kyazdani42/nvim-tree.lua", config = [[require("config.tree")]] }
  
  -- File icons
  use "kyazdani42/nvim-web-devicons"

  -- Git integration
  use "tpope/vim-fugitive"

  -- Indentation lines
  use "Yggdroot/indentLine"

  -- Color scheme
  use "lifepillar/vim-gruvbox8"
end)
