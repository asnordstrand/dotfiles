local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

-- Auto install packer.nvim
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

-- Required because packer is installed in opt/
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- Packer
	use {'wbthomason/packer.nvim', opt = true}
	
	-- Surround for brackets, quotes, etc
	use 'tpope/vim-surround'
	
	-- Git
	use 'tpope/vim-fugitive'
	
	-- Indentation levels
	use 'Yggdroot/indentLine'

	-- fzf
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'

	-- Rust fuctionality
	use 'rust-lang/rust.vim'

	-- Color scheme
	use 'gruvbox-community/gruvbox'
end)
