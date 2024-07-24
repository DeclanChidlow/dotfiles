-- Move text or code
-- https://github.com/echasnovski/mini.move

return {
	"echasnovski/mini.move",
	keys = {
		'<M-Left>',
		'<M-Right>',
		'<M-Down>',
		'<M-Up>',
	},
	opts = {
		mappings = {
			-- Move visual selection
			left = '<M-Left>',
			right = '<M-Right>',
			down = '<M-Down>',
			up = '<M-Up>',

			-- Move line in normal mode
			line_left = '<M-Left>',
			line_right = '<M-Right>',
			line_down = '<M-Down>',
			line_up = '<M-Up>',
		},
	}
}
