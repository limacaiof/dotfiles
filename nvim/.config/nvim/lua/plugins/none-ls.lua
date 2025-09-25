return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- formating 
                null_ls.builtins.formatting.stylua.with({ filetypes = { "lua" } }),
                null_ls.builtins.formatting.black.with({ filetypes = { "python" } }),
                null_ls.builtins.formatting.prettier.with({
                    filetypes = { "html", "javascript", "typescript", "json", "yaml", "yml", "markdown" },
                }),
                -- diagnostics
                -- require("none-ls.diagnostics.eslint_d"),
                require("none-ls.diagnostics.ruff").with({ filetypes = { "python" } }),
            },
        })

        vim.keymap.set("n", "cf", vim.lsp.buf.format, {})
        vim.keymap.set(
            "n",
            "<leader>cd",
            ':lua vim.diagnostic.open_float(nil, {focus=true, scope="line"})<CR>',
            { desc = "Toggle Diagnostics", noremap = true, silent = true }
        )
    end,
}
