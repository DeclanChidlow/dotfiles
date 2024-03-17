-- Treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
	"nvim-treesitter/nvim-treesitter",

	init = function()
		require("nvim-treesitter.install").update({
			with_sync = true,
		})

		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
			},
			ensure_installed = {
				"bash",
				"css",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"php",
				"python",
				"rust",
				"toml",
				"sql",
				"toml",
				"typescript",
				"yaml",
				"git_config",
				"git_rebase",
				"gitattributes",
				"gitcommit",
				"gitignore",
			},
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
	},
}
