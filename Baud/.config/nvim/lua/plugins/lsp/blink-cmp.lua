-- Completion engine
-- https://github.com/Saghen/blink.cmp

return {
	"saghen/blink.cmp",
	lazy = false,
	version = 'v0.*',
	opts = {
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
}
