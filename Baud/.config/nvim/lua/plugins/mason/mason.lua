-- Portable package manager (installs LSP servers)
-- https://github.com/williamboman/mason.nvim

return {
	"williamboman/mason.nvim",
	init = function()
		require("mason").setup()

		-- mason-lspconfig and mason-tool-installer are referenced here for correct loading order
		require("mason-lspconfig").setup({
			automatic_installation = true,
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				-- LSPs
				"bashls",
				"cssls",
				"emmet_language_server",
				"html",
				"jsonls",
				"lua_ls",
				"marksman",
				"phpactor",
				"pylsp",
				"rust_analyzer",
				"taplo",
				"tsserver",
				"yamlls",
				-- Formatters
				"beautysh",
				"prettier",
				"prettierd",
				"phpcbf",
				"ruff",
			},
		})
	end,
	lazy = false,
}
