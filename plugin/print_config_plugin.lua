vim.print("This is the start point(can be consider as MainFunction/EntryPoint) when loading a plugin to neovim")

-- you can do anything you want by writing lua scripts
require("print-config").setup({
  called_by = "plugin/print_config_plugin.lua"
}) -- here I just call the setup method

vim.print("This is the end of Loading a plugin")
