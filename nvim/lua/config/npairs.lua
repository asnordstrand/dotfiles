local npairs = require("nvim-autopairs")
local set_keymap = vim.api.nvim_set_keymap

npairs.setup()

_G.MUtils= {}

vim.g.completion_confirm_key = ""

MUtils.completion_confirm = function()
  if vim.fn.pumvisible() ~= 0  then
    if vim.fn.complete_info()["selected"] ~= -1 then
      return vim.fn["compe#confirm"](npairs.esc("<cr>"))
    else
      return npairs.esc("<cr>")
    end
  else
    return npairs.autopairs_cr()
  end
end

-- Key mappings
local opts = { expr = true, noremap = true }
set_keymap("i", "<cr>", "v:lua.MUtils.completion_confirm()", opts)
