-- disable netrw at the very start -> use nvim-tree instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
require("sebproell.remap")
require("sebproell.settings")


