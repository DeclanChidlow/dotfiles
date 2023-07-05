-- Configure language server protocol
local Plugin = { "neovim/nvim-lspconfig" }

function Plugin.init()
	lspconfig = require 'lspconfig'
end

return Plugin
