-- Completion engine
-- https://github.com/Saghen/blink.cmp

return {
	"saghen/blink.cmp",
	lazy = false,
	version = '*',
	opts = {
		keymap = {
			['<Tab>'] = { 'select_next', 'fallback' },
			['<S-Tab>'] = { 'select_prev', 'fallback' },
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
}
