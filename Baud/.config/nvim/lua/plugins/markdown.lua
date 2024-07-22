-- Improved markdown viewing
-- https://github.com/MeanderingProgrammer/markdown.nvim

return {
	"MeanderingProgrammer/markdown.nvim",
	ft = "markdown",
	config = function()
		require('render-markdown').setup()
	end,
}
