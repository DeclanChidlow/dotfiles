-- Highlight, list and search todo comments
-- https://github.com/folke/todo-comments.nvim

return {
	"folke/todo-comments.nvim",
	opts = {
		keywords = {
			TODO = { icon = "󰄬 ", color = "info", alt = { "TO-DO", "TASK" } },
			HACK = { icon = "󰈸 ", color = "warning", alt = { "BODGE", "TEMP", "WORKAROUND" } },
			BUG = { icon = "󰃤 ", color = "error", alt = { "GLITCH", "ISSUE", "PROBLEM", "ERROR" } },
			WARN = { icon = " ", color = "warning", alt = { "WARNING", "CAUTION", "DANGER" } },
			PERF = {
				icon = " ",
				color = "warning",
				alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE", "OPTIMIZATION" },
			},
			DOC = { icon = "󰈙 ", color = "warning", alt = { "DOCUMENTATION", "DOCS" } },
			SEC = { icon = "󰒃 ", color = "error", alt = { "SECURITY", "SECURITYFIX", "VULNERABILITY" } },
			NOTE = { icon = "󰠮 ", color = "hint", alt = { "INFO", "COMMENT", "REMARK" } },
			REV = { icon = "󰅇 ", color = "info", alt = { "REVIEW", "REVISIT", "FEEDBACK" } },
			TEST = {
				icon = "󰙨 ",
				color = "info",
				alt = { "TEST", "TESTNEEDED", "TESTING", "PASSED", "FAILED", "ASSERT" },
			},
			DEPRECATED = { icon = "󱚡 ", color = "warning", alt = { "OBSOLETE", "OUTDATED" } },
			ANALYZE = { icon = " ", color = "warning", alt = { "ANALYSIS", "CHECK" } },
			DESIGN = { icon = "󰏘 ", color = "warning", alt = { "ARCHITECTURE", "STRUCTURE" } },
			VERIFY = { icon = "󰗠 ", color = "warning", alt = { "VALIDATE", "VERIFY" } },
			IDEA = { icon = "󰌵 ", color = "info", alt = { "IDEA", "CONCEPT" } },
		},
		colors = {
			error = { "DiagnosticError", "#F13731" },
			warning = { "DiagnosticWarn", "#FFAD1F" },
			info = { "DiagnosticInfo", "#3578C1" },
			hint = { "DiagnosticHint", "#58A551" },
			default = { "Identifier", "#532ca5" },
		},
	}
}
