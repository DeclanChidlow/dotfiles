-- Git functionality
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-git.md

return {
	"echasnovski/mini-git",
	init = function()
		require("mini.git").setup()
	end,
}
