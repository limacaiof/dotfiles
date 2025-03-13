return {
	"nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.prettier,
				require("none-ls.diagnostics.eslint_d"),
				require("none-ls.diagnostics.ruff"),
			},
		})

		vim.keymap.set("n", "cf", vim.lsp.buf.format, {})
        vim.keymap.set('n', '<leader>cd', ':lua vim.diagnostic.open_float(nil, {focus=true, scope="line"})<CR>', { desc = 'Toggle Diagnostics', noremap = true, silent = true })
        end,
}
