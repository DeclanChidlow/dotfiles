-- Highlight colours
-- https://github.com/brenoprata10/nvim-highlight-colors
-- (referenced in nvim-cmp config)

return {
	"brenoprata10/nvim-highlight-colors",
	config = function()
		require('nvim-highlight-colors').setup({
			enable_tailwind = false,
		})
	end,
}
