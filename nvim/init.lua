require("vim-keymaps")
require("lazy-config")


vim.cmd("colorscheme catppuccin")
vim.opt.colorcolumn = "80"

-- Disable Treesitter highlighting.
vim.cmd("TSDisable highlight")
