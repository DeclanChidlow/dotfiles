-- File formatter
-- https://github.com/stevearc/conform.nvim

return {
	"stevearc/conform.nvim",
	init = function()
		require("conform").setup({
			lsp_fallback = true,
			formatters_by_ft = {
				json = { { "prettierd", "prettier" } },
				bash = { "beautysh" },
				css = { { "prettierd", "prettier" } },
				scss = { { "prettierd", "prettier" } },
				less = { { "prettierd", "prettier" } },
				html = { { "prettierd", "prettier" } },
				markdown = { { "prettierd", "prettier" } },
				php = { "phpcbf" },
				python = { "ruff" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				yaml = { { "prettierd", "prettier" } },
				toml = { "taplo" },
			},
		})
	end,
}
