-- Git decorations
-- https://github.com/lewis6991/gitsigns.nvim

return {
	"lewis6991/gitsigns.nvim",
	init = function()
		require("gitsigns").setup()
	end,
}
