-- Add icons to many plugins
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-icons.md

return {
	"echasnovski/mini.icons",
	init = function()
		require('mini.icons').setup()
	end,
}
