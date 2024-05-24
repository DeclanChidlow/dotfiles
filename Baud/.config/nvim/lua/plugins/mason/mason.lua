-- Portable package manager (installs LSP servers)
-- https://github.com/williamboman/mason.nvim

return {
	"williamboman/mason.nvim",
	init = function()
		require("mason").setup()

		-- mason-lspconfig is referenced here for correct loading order
		require("mason-lspconfig").setup({
			automatic_installation = true,
		})
	end,
	lazy = false,
}
