-- nvim-cmp source for nerdfont icons
local Plugin = { "chrisgrieser/cmp-nerdfont" }

function Plugin.init()
	require 'cmp'.setup {
		sources = {
			{ name = 'nerdfont' }
		}
	}
end

return Plugin
