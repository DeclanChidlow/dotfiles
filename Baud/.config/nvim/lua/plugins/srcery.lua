-- Colour scheme
-- https://github.com/srcery-colors/srcery-vim

return {
	"srcery-colors/srcery-vim",
	config = function()
		vim.cmd("colorscheme srcery")
		vim.cmd("highlight Normal ctermbg=none guibg=none")
	end,
}
