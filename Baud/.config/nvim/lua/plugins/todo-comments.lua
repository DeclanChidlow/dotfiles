-- Highlight, list and search todo comments
-- https://github.com/folke/todo-comments.nvim

return {
	"folke/todo-comments.nvim",
	config = function()
		vim.opt.showmode = false
		require("todo-comments").setup({
			keywords = {
				TODO       = { icon = "󰄬 ", color = "info", alt = { "TO-DO", "TASK" } },
				HACK       = { icon = "󰈸 ", color = "warning", alt = { "BODGE", "TEMP", "WORKAROUND" } },
				BUG        = { icon = "󰃤 ", color = "error", alt = { "GLITCH", "ISSUE", "PROBLEM", "ERROR" } },
				WARN       = { icon = " ", color = "warning", alt = { "WARNING", "CAUTION", "DANGER" } },
				PERF       = { icon = " ", color = "warning", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE", "OPTIMIZATION" } },
				DOC        = { icon = "󰈙 ", color = "warning", alt = { "DOCUMENTATION", "DOCS" } },
				SEC        = { icon = "󰒃 ", color = "error", alt = { "SECURITY", "SECURITYFIX", "VULNERABILITY" } },
				NOTE       = { icon = "󰠮 ", color = "hint", alt = { "INFO", "COMMENT", "REMARK" } },
				REV        = { icon = "󰅇 ", color = "info", alt = { "REVIEW", "REVISIT", "FEEDBACK" } },
				TEST       = { icon = "󰙨 ", color = "info", alt = { "TEST", "TESTNEEDED", "TESTING", "PASSED", "FAILED", "ASSERT" } },
				DEPRECATED = { icon = "󱚡 ", color = "warning", alt = { "OBSOLETE", "OUTDATED" } },
				ANALYZE    = { icon = " ", color = "warning", alt = { "ANALYSIS", "CHECK" } },
				DESIGN     = { icon = "󰏘 ", color = "warning", alt = { "ARCHITECTURE", "STRUCTURE" } },
				VERIFY     = { icon = "󰗠 ", color = "warning", alt = { "VALIDATE", "VERIFY" } },
				IDEA       = { icon = "󰌵 ", color = "info", alt = { "IDEA", "CONCEPT" } },
			},
			colors = {
				error = { "DiagnosticError", "#DC2626" },
				warning = { "DiagnosticWarn", "#FBBF24" },
				info = { "DiagnosticInfo", "#2563EB" },
				hint = { "DiagnosticHint", "#10B981" },
				default = { "Identifier", "#7C3AED" },
			},

		})
	end,
}
