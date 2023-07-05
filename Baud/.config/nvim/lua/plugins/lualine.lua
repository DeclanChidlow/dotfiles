-- Statusline generator
local Plugin = { "nvim-lualine/lualine.nvim" }

function Plugin.init()
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
				lualine_z = { "selectioncount", "location" }
			},
		},
	})
end

return Plugin
