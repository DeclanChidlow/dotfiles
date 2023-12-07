-- Colour code creator and displayer
-- https://github.com/uga-rosa/ccc.nvim

return {
	"uga-rosa/ccc.nvim",
	init = function()
		local ccc = require("ccc")
		local mapping = ccc.mapping
		ccc.setup({
			point_char = "◆",
			highlighter = {
				auto_enable = true,
			},
			mappings = {
				["<Esc>"] = mapping.quit,
			},
		})
	end
}
