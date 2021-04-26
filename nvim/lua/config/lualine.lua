local lualine = require("lualine")

lualine.setup {
  options = {
    theme = "gruvbox",
    icons_enabled = false,
    section_separators = "",
    component_separators = "|",
  },
  extensions = {
    "fugitive",
  },
}
