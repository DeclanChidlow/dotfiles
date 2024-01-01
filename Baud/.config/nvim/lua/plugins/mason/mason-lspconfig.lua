-- Bridges mason.nvim with the lspconfig plugin
-- https://github.com/williamboman/mason-lspconfig.nvim

return {
	"williamboman/mason-lspconfig",
	init = function()
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,
		})
	end,
	-- Configured in main Mason config for proper loading order.
}
