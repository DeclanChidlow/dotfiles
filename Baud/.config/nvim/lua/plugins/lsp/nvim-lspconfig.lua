-- Configure language server protocols
-- https://github.com/neovim/nvim-lspconfig

return {
	'neovim/nvim-lspconfig',
	opts = {
		servers = {
			bashls = {},
			emmet_language_server = {},
			cssls = { capabilities = capabilities },
			html = { capabilities = capabilities },
			lemminx = {},
			yamlls = {},
			ts_ls = {},
			rust_analyzer = {
				settings = {
					['rust-analyzer'] = {
						diagnostics = {
							enable = false,
						}
					}
				}
			},
			lua_ls = {
				on_init = function(client)
					client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
						workspace = { library = { vim.env.VIMRUNTIME } }
					})
				end,
				settings = { Lua = {} }
			},
			phpactor = {},
			ruff = {},
			taplo = {},
		}
	},
	inlay_hints = {
		enabled = true,
	},
	config = function(_, opts)
		local lspconfig = require('lspconfig')
		for server, config in pairs(opts.servers) do
			config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
			lspconfig[server].setup(config)
		end
	end
}
