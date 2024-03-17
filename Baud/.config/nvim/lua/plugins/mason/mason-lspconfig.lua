-- Bridges mason.nvim with the lspconfig plugin
-- https://github.com/williamboman/mason-lspconfig.nvim

return {
	"williamboman/mason-lspconfig",
	init = function()
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				require("lspconfig")[server_name].setup({
					capabilities = capabilities,
				})
			end,
		})
	end,
	-- Configured in main Mason config for proper loading order.
}
