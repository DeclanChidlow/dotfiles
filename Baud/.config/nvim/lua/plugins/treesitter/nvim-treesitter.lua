-- Treesitter
local Plugin = { "nvim-treesitter/nvim-treesitter" }

function Plugin.init()
	require("nvim-treesitter.install").update({ with_sync = true })

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
end

return Plugin
