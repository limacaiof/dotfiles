return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.keymap.set(
			"n",
			"<C-n>",
			":NvimTreeToggle <CR>",
			{ desc = "Toggle File Tree", noremap = true, silent = true }
		)
		require("nvim-tree").setup({
			view = {
				width = 35,
				side = "right",
			},
			renderer = {
				group_empty = false,
			},
			filters = {
				dotfiles = false,
				custom = { "^.git$" },
			},
			git = {
				ignore = false,
			},
		})
	end,
}
