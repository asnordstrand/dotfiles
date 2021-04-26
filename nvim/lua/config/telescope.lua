local telescope = require("telescope")
local actions = require("telescope.actions")
local set_keymap = vim.api.nvim_set_keymap

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      }
    }
  }
}

-- Key mappings
local opts = { noremap = true, silent = true }
set_keymap("n", "<leader>ff", [[<cmd>lua require("telescope.builtin").find_files()<cr>]], opts)
set_keymap("n", "<leader>fg", [[<cmd>lua require("telescope.builtin").git_files()<cr>]], opts)
set_keymap("n", "<leader>fb", [[<cmd>lua require("telescope.builtin").buffers()<cr>]], opts)
set_keymap("n", "<leader>fo", [[<cmd>lua require("telescope.builtin").oldfiles()<cr>]], opts)
