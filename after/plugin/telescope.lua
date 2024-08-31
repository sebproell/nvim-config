local builtin = require('telescope.builtin')
-- fuzzy find files
vim.keymap.set('n', '<leader>pf', function() builtin.find_files() end)
-- fuzzy find only for git files
vim.keymap.set('n', '<leader>pg', function() builtin.git_files({ hidden = true }) end)
-- grep for string under cursor
vim.keymap.set('n', '<leader>ps', function() builtin.grep_string() end)
-- grep for custom string
vim.keymap.set('n', "<leader>ph", function() builtin.live_grep() end)


-- Copied from kickstart.nvim
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>pd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>pr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })


local live_grep_in_glob = function(glob_pattern)
    require('telescope.builtin').live_grep({
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--glob=" .. (glob_pattern or ""),
        }
    })
end
vim.keymap.set('n', '<leader>pl', function()
    vim.ui.input({ prompt = "Glob: ", completion = "file", default = "**/*." }, live_grep_in_glob)
end)
