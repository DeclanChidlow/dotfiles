-- Colour code creator and displayer
local Plugin = { "uga-rosa/ccc.nvim" }

function Plugin.init()
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

return Plugin
