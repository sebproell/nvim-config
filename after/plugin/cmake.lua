require("cmake-tools").setup {
  -- options: https://github.com/Civitasv/cmake-tools.nvim/blob/master/README.md
  cmake_command = "cmake", -- this is used to specify cmake command path
  cmake_regenerate_on_save = true, -- auto generate when save CMakeLists.txt
  -- for safety in projects that don't have presets: leave these options on
  cmake_build_directory = "", -- this is used to specify generate directory for cmake
  cmake_build_directory_prefix = "cmake_build_", -- when cmake_build_directory is set to "", this option will be activated

  -- IMPORTANT
  -- this setting enables smooth interplay with clangd!
  cmake_soft_link_compile_commands = true, -- this will automatically make a soft link from compile commands file to project root dir

  cmake_compile_commands_from_lsp = false, -- this will automatically set compile commands file location using lsp, to use it, please set `cmake_soft_link_compile_commands` to false
  cmake_variants_message = {
    short = { show = true }, -- whether to show short message
    long = { show = true, max_length = 40 } -- whether to show long message
  },
  cmake_always_use_terminal = false, -- if true, use terminal for generate, build, clean, install, run, etc, except for debug, else only use terminal for run, use quickfix for others
  cmake_quickfix_opts = { -- quickfix settings for cmake, quickfix will be used when `cmake_always_use_terminal` is false
    show = "always", -- "always", "only_on_error"
    position = "belowright", -- "bottom", "top"
    size = 10,
  },
  cmake_terminal_opts = { -- terminal settings for cmake, terminal will be used for run when `cmake_always_use_terminal` is false or true, will be used for all tasks except for debug when `cmake_always_use_terminal` is true
    name = "Main Terminal",
    prefix_name = "[CMakeTools]: ", -- This must be included and must be unique, otherwise the terminals will not work. Do not use a simple spacebar " ", or any generic name
    split_direction = "horizontal", -- "horizontal", "vertical"
    split_size = 11,

    -- Window handling
    single_terminal_per_instance = true, -- Single viewport, multiple windows
    single_terminal_per_tab = true, -- Single viewport per tab
    keep_terminal_static_location = true, -- Static location of the viewport if avialable

    -- Running Tasks
    start_insert_in_launch_task = false, -- If you want to enter terminal with :startinsert upon using :CMakeRun
    start_insert_in_other_tasks = false, -- If you want to enter terminal with :startinsert upon launching all other cmake tasks in the terminal. Generally set as false
    focus_on_main_terminal = false, -- Focus on cmake terminal when cmake task is launched. Only used if cmake_always_use_terminal is true.
    focus_on_launch_terminal = false, -- Focus on cmake launch terminal when executable target in launched.
  }
}

vim.keymap.set("n", "<leader>cb", vim.cmd.CMakeBuild)
vim.keymap.set("n", "<leader>ct", vim.cmd.CMakeSelectBuildTarget)
vim.keymap.set("n", "<leader>cr", vim.cmd.CMakeRun)
vim.keymap.set("n", "<leader>cs", vim.cmd.CMakeStop)
vim.keymap.set("n", "<leader>cp",
    function()
        -- Delete a potential symlink to compile_commands.json
        os.execute('rm -f compile_commands.json')
        -- such that it can be regenerated by the preset selection
        vim.cmd.CMakeSelectConfigurePreset()
    end)

