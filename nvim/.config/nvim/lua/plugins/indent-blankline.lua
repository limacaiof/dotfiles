return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		require("ibl").setup({
			scope = {
				enabled = false, -- disable highlight color around the function/context
			},
		})
	end,
}
