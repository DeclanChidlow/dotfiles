-- Treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	cmd = { "TSUpdate", "TSUpdateSync", "TSInstall" },
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
	},
	config = function()
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
	end,
}
