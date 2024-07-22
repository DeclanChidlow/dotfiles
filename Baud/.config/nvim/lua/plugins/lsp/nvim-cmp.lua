-- Completion engine
-- https://github.com/hrsh7th/nvim-cmp

return {
	"hrsh7th/nvim-cmp",
	init = function()
		local cmp = require("cmp")

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "nerdfont" },
				{ name = "path" },
				{ name = "buffer" },
			}),
			formatting = {
				format = require("nvim-highlight-colors").format
			}
		})
	end,
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"chrisgrieser/cmp-nerdfont",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
	},
}
