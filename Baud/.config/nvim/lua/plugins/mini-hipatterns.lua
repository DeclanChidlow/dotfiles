-- Highlight patterns in text
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-hipatterns.md

return {
	"echasnovski/mini.hipatterns",
	event = "VeryLazy",
	opts = function()
		local hi = require("mini.hipatterns")
		return {
			highlighters = {
				hex_color  = hi.gen_highlighter.hex_color(),

				fixme      = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'DiagnosticError' },
				hack       = { pattern = '%f[%w]()HACK()%f[%W]', group = 'DiagnosticWarn' },
				todo       = { pattern = '%f[%w]()TODO()%f[%W]', group = 'DiagnosticInfo' },
				note       = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'DiagnosticHint' },
				bug        = { pattern = '%f[%w]()BUG()%f[%W]', group = 'DiagnosticError' },
				warn       = { pattern = '%f[%w]()WARN()%f[%W]', group = 'DiagnosticWarn' },
				perf       = { pattern = '%f[%w]()PERF()%f[%W]', group = 'DiagnosticWarn' },
				doc        = { pattern = '%f[%w]()DOC()%f[%W]', group = 'DiagnosticWarn' },
				sec        = { pattern = '%f[%w]()SEC()%f[%W]', group = 'DiagnosticError' },
				rev        = { pattern = '%f[%w]()REV()%f[%W]', group = 'DiagnosticInfo' },
				test       = { pattern = '%f[%w]()TEST()%f[%W]', group = 'DiagnosticInfo' },
				deprecated = { pattern = '%f[%w]()DEPRECATED()%f[%W]', group = 'DiagnosticDepreciated' },
				design     = { pattern = '%f[%w]()DESIGN()%f[%W]', group = 'DiagnosticWarn' },
				verify     = { pattern = '%f[%w]()VERIFY()%f[%W]', group = 'DiagnosticWarn' },
				idea       = { pattern = '%f[%w]()IDEA()%f[%W]', group = 'DiagnosticHint' },
			}
		}
	end,
}
