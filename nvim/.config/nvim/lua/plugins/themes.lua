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
        enabled = true,
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.g.gruvbox_material_background = "hard"
            vim.cmd([[colorscheme gruvbox-material]])
        end,
    },
    {
        "savq/melange-nvim",
        enabled = false,
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd([[colorscheme melange]])

            -- ty meisaka
            local mel = require("melange/palettes/dark")
            for name, attrs in pairs({
                Normal = { fg = mel.a.fg, bg = "#1e1b1a" },
                Whitespace = { fg = "#4e433e", italic = false, nocombine = true },
                --LspInlayHint = { fg = "#4e433e", italic = false, nocombine = true },
                LspInlayHint = { fg = "#70787e", italic = true, nocombine = false },
                ["@lsp.type.namespace"] = { fg = "#78b98A" },
                ["@lsp.type.class"] = { fg = "#73b9be" },
            }) do
                vim.api.nvim_set_hl(0, name, attrs)
            end
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        enabled = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
        opts = {},
    },
}
