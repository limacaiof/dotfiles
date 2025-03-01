local ignore_filetypes_list = {
    "venv",
    "__pycache__",
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
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set(
                { "n", "v" },
                "<leader>ff",
                builtin.find_files,
                { desc = "Telescope find files - Find general" }
            )
            vim.keymap.set({ "n", "v" }, "<leader>fw", builtin.live_grep, { desc = "Telescope live grep - Find all" })
            vim.keymap.set({ "n", "v" }, "<leader>fg", builtin.git_files, { desc = "Telescope git files - Find Files" })
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
