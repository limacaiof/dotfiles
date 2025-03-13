local ignore_filetypes_list = {
    "venv",
    "__pycache__",
    "node%_modules/.*",
    "%.xlsx",
    "%.jpg",
    "%.png",
    "%.webp",
    "%.pdf",
    "%.odt",
    "%.ico",
    "%.mp4",
}

return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0" },
        },
        config = function()
            local telescope = require("telescope")
            local builtin = require("telescope.builtin")
            local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")

            telescope.load_extension("live_grep_args")

            vim.keymap.set(
                "v",
                "<leader>fw",
                live_grep_args_shortcuts.grep_word_under_cursor,
                { desc = "Telescope visual live grep - Find by text" }
            )
            vim.keymap.set({ "n", "v" }, "<leader>fg", builtin.git_files, { desc = "Telescope git files - Find Files" })
            vim.keymap.set(
                { "n", "v" },
                "<leader>ff",
                builtin.find_files,
                { desc = "Telescope find files - Find general" }
            )
            vim.keymap.set(
                "n",
                "<leader>fw",
                telescope.extensions.live_grep_args.live_grep_args,
                { desc = "Telescope live grep - Find all" }
            )
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = ignore_filetypes_list,
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({
                            -- even more opts
                        }),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
