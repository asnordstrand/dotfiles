" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/Users/annasnordstrand/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/annasnordstrand/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/annasnordstrand/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/annasnordstrand/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/annasnordstrand/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  indentLine = {
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lualine.nvim"] = {
    config = { 'require("config.lualine")' },
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { 'require("config.npairs")' },
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-compe"] = {
    config = { 'require("config.compe")' },
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("config.lsp")' },
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    config = { 'require("config.treesitter")' },
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    config = { 'require("config.telescope")' },
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gruvbox8"] = {
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/vim-gruvbox8"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/annasnordstrand/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  }
}

time("Defining packer_plugins", false)
-- Config for: nvim-lspconfig
time("Config for nvim-lspconfig", true)
require("config.lsp")
time("Config for nvim-lspconfig", false)
-- Config for: nvim-treesitter
time("Config for nvim-treesitter", true)
require("config.treesitter")
time("Config for nvim-treesitter", false)
-- Config for: telescope.nvim
time("Config for telescope.nvim", true)
require("config.telescope")
time("Config for telescope.nvim", false)
-- Config for: nvim-autopairs
time("Config for nvim-autopairs", true)
require("config.npairs")
time("Config for nvim-autopairs", false)
-- Config for: lualine.nvim
time("Config for lualine.nvim", true)
require("config.lualine")
time("Config for lualine.nvim", false)
-- Config for: nvim-compe
time("Config for nvim-compe", true)
require("config.compe")
time("Config for nvim-compe", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
