-- Completion engine
local Plugin = { "hrsh7th/nvim-cmp" }

function Plugin.init()
	local cmp = require 'cmp'

	cmp.setup({
		snippet = {
			expand = function(args)
				require('luasnip').lsp_expand(args.body)
			end,
		},
		mapping = cmp.mapping.preset.insert({
			["<Tab>"] = cmp.mapping.select_next_item(select_opts),
			["<S-Tab>"] = cmp.mapping.select_prev_item(select_opts),
			['<C-b>'] = cmp.mapping.scroll_docs(-4),
			['<C-f>'] = cmp.mapping.scroll_docs(4),
			['<C-Space>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.abort(),
			['<CR>'] = cmp.mapping.confirm({ select = true }),
		}),
		sources = cmp.config.sources({
			{ name = 'nvim_lsp' },
			{ name = 'luasnip' },
		}, {
			{ name = 'buffer' },
		})
	})

	local capabilities = require('cmp_nvim_lsp').default_capabilities()

	require('lspconfig')['rust_analyzer'].setup {
		capabilities = capabilities
	}

	require('lspconfig')['pylsp'].setup {
		capabilities = capabilities
	}

	require('lspconfig')['lua_ls'].setup {
		capabilities = capabilities
	}

	require('lspconfig')['bashls'].setup {
		capabilities = capabilities
	}

	require('lspconfig')['html'].setup {
		capabilities = capabilities
	}

	require('lspconfig')['cssls'].setup {
		capabilities = capabilities
	}

	require('lspconfig')['tsserver'].setup {
		capabilities = capabilities
	}
end

return Plugin
