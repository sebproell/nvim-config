local builtin = require('telescope.builtin')
-- fuzzy find files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- fuzzy find only for git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- grep for string under cursor
vim.keymap.set('n', '<leader>ps', builtin.grep_string)
-- grep for custom string
vim.keymap.set('n', "<leader>ph", builtin.live_grep)
