return {
    {
        "folke/tokyonight.nvim",
        enabled = true,
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
                -- on_colors = function(colors)
                --     colors.bg = "#0b0b0b"
                --     colors.bg_dark = "#0b0b0b"
                --     colors.bg_dark_1 = "#0b0b0b"
                -- end,
            })
            vim.cmd([[colorscheme tokyonight-night]])
        end,
    },
    {
        "sainnhe/gruvbox-material",
        enabled = false,
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.g.gruvbox_material_background = 'hard'
            vim.cmd([[colorscheme gruvbox-material]])
        end,
    },
}
