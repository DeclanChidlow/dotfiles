-- Add indentation guides
-- https://github.com/lukas-reineke/indent-blankline.nvim

return {
	"lukas-reineke/indent-blankline.nvim",
	init = function()
		require("ibl").setup({
			scope = {
				enabled = false,
			}
		})
	end,
}
