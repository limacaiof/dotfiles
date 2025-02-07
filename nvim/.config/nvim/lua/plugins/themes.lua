return {
    {
        "folke/tokyonight.nvim",
        enabled = false,
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("tokyonight").setup({
                -- disable italic for functions
                styles = {
                    functions = {},
                },
                -- Change the "hint" color to the "orange" color, and make the "error" color bright red
                on_colors = function(colors)
                    colors.bg = "#0b0b0b"
                    colors.bg_dark = "#0b0b0b"
                    colors.bg_dark_1 = "#0b0b0b"
                end,
            })
            vim.cmd([[colorscheme tokyonight-night]])
        end,
    },
    {
        "projekt0n/github-nvim-theme",
        -- enabled = false,
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("github-theme").setup({
                -- ...
            })

            vim.cmd("colorscheme github_dark_default")
        end,
    },
}
