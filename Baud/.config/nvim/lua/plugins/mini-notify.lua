-- Notifications
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-notify.md

return {
	"echasnovski/mini.notify",
	opts = {
		window = {
			max_width_share = 0.5,
		}
	},
	init = function()
		vim.notify = require('mini.notify').make_notify()
	end,
}
