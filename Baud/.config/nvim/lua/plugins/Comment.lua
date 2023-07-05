-- Better comments
local Plugin = { "numToStr/Comment.nvim" }

function Plugin.init()
	require('Comment').setup()
end

return Plugin
