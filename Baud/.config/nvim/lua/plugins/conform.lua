-- File formatter
-- https://github.com/stevearc/conform.nvim

return {
	"stevearc/conform.nvim",
	cmd = "ConformInfo",
	keys = {
		{
			"f",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			json = { "prettierd" },
			css = { "prettierd" },
			scss = { "prettierd" },
			less = { "prettierd" },
			html = { "prettierd" },
			hbs = { "prettierd" },
			xhtml = { "prettierd" },
			markdown = { "prettierd" },
			php = { "prettierd" },
			python = { "ruff" },
			javascript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
			yaml = { "prettierd" },
			toml = { "taplo" },
		},
	},
}
