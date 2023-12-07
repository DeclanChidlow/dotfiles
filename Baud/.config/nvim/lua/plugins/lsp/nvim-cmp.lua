-- Completion engine
-- https://github.com/hrsh7th/nvim-cmp

return {
	"hrsh7th/nvim-cmp",
	init = function()
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
				{ name = 'nerdfont' },
				{ name = 'buffer' },
				{ name = 'path' },
			})
		})
	end,
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	}
}
