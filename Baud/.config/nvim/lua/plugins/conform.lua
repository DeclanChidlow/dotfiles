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
				html = { { "prettierd", "prettier" } },
				lua = { "stylua" },
				markdown = { { "prettierd", "prettier" } },
				python = { "ruff" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				yaml = { { "prettierd", "prettier" } },
				toml = { "taplo" },
			},
		})
	end,
}
