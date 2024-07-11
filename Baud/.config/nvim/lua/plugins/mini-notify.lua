-- Notifications
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-notify.md

return {
	"echasnovski/mini.notify",
	config = function()
		require('mini.notify').setup({
			window = {
				max_width_share = 0.5,
			}
		})
		vim.notify = require('mini.notify').make_notify()
	end,
}
