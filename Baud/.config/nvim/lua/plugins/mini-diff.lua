-- Git diff signs
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-diff.md

return {
	"echasnovski/mini.diff",
	init = function()
		require("mini.diff").setup({
			view = {
				style = "sign",
			},
		})
	end,
}
