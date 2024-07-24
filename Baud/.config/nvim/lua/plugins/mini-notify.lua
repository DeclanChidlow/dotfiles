-- Notifications
-- https://github.com/echasnovski/mini.notify

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
