-- Notifications
-- https://github.com/rcarriga/nvim-notify

return {
	"rcarriga/nvim-notify",
	init = function()
		vim.notify = require("notify")
	end,
	opts = {
		stages = "static",
		render = "wrapped-compact",
		background_colour = vim.g.terminal_color_background,
		minimum_width = 15,
		max_height = function()
			return math.floor(vim.o.lines * 0.75)
		end,
		max_width = function()
			return math.floor(vim.o.columns * 0.75)
		end,
	},
}
