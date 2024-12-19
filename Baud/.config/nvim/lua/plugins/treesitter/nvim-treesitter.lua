-- Treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy",
	cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
	lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
	opts = {
		highlight = { enable = true, },
		indent = { enable = true },
		auto_install = true,
		ensure_installed = {
			"bash",
			"css",
			"html",
			"javascript",
			"json",
			"jsonc",
			"lua",
			"markdown",
			"php",
			"python",
			"rust",
			"regex",
			"toml",
			"tsx",
			"typescript",
			"sql",
			"toml",
			"typescript",
			"xml",
			"yaml",
			"git_config",
			"git_rebase",
			"gitattributes",
			"gitcommit",
			"gitignore",
		},
	},
}
