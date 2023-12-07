-- Treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
	"nvim-treesitter/nvim-treesitter",

	init = function()
		require("nvim-treesitter.install").update({
			with_sync = true
		})

		require('nvim-treesitter.configs').setup({
			highlight = {
				enable = true,
			},
			ensure_installed = {
				'javascript',
				'python',
				'rust',
				'html',
				'toml',
				'css',
				'json',
				'lua',
				'markdown',
				'git_config',
				'git_rebase',
				'gitattributes',
				'gitcommit',
				'gitignore',
			},
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
	}
}
