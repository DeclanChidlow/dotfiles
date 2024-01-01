-- Statusline generator
-- https://github.com/nvim-lualine/lualine.nvim

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		vim.opt.showmode = false
		require("lualine").setup({
			options = {
				component_separators = "|",
				section_separators = "",
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "hostname", "filename" },
					lualine_d = { "searchcount" },
					lualine_x = { "encoding", "filesize", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "selectioncount", "location" },
				},
			},
		})
	end,
}
