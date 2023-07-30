local builtin = require('telescope.builtin')
-- fuzzy find files
vim.keymap.set('n', '<leader>pf', function() builtin.find_files() end)
-- fuzzy find only for git files
vim.keymap.set('n', '<leader>pg', function() builtin.git_files({ hidden = true }) end)
-- grep for string under cursor
vim.keymap.set('n', '<leader>ps', function() builtin.grep_string() end)
-- grep for custom string
vim.keymap.set('n', "<leader>ph", function() builtin.live_grep() end)
