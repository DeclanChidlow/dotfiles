-- Colour code creator and displayer
local Plugin = {'uga-rosa/ccc.nvim'}

function Plugin.init()
	local ccc = require("ccc")
	local mapping = ccc.mapping
	ccc.setup({
		highlighter = {
	   		auto_enable = true
		},
	})
end

return Plugin
