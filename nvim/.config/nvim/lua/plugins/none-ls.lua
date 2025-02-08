return {
	"nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua.with({
                    filetypes = {"lua"}
                }),
				null_ls.builtins.formatting.black.with({
                    filetypes = {"py", "ipynb"}
                }),
				require("none-ls.diagnostics.ruff").with({
                    filetypes = {"py", "ipynb"}
                }),
			},
		})

		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
	end,
}
