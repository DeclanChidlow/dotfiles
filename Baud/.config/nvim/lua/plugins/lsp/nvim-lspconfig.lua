-- Configure language server protocols
-- https://github.com/neovim/nvim-lspconfig

return {
	"neovim/nvim-lspconfig",
	init = function()
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		local servers = {
			bashls = {},
			emmet_language_server = {},
			cssls = { capabilities = capabilities },
			html = { capabilities = capabilities },
			yamlls = {},
			tailwindcss = {},
			tsserver = {},
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
					local path = client.workspace_folders[1].name
					if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
						return
					end

					client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
						workspace = {
							checkThirdParty = false,
							library = {
								vim.env.VIMRUNTIME
							}
						}
					})
				end,
				settings = {
					Lua = {}
				}
			},
			phpactor = {},
			ruff = {},
			taplo = {},
		}

		for server, config in pairs(servers) do
			require("lspconfig")[server].setup(config)
		end
	end,
}
