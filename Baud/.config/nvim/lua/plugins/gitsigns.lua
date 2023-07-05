-- Git decorations
local Plugin = { "lewis6991/gitsigns.nvim" }

function Plugin.init()
	require("gitsigns").setup()
end

return Plugin
