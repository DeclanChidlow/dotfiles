-- Winbar with breadcrumbs
-- https://github.com/Bekaboo/dropbar.nvim

return {
	"Bekaboo/dropbar.nvim",
	config = function()
		local map = vim.keymap.set
		local dropbar_api = require('dropbar.api')
		map('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
		map('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
		map('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
	end
}
