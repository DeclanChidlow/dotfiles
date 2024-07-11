-- Statusline
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-statusline.md

return {
	"echasnovski/mini.statusline",
	config = function()
		require("mini.statusline").setup()
	end,
}
