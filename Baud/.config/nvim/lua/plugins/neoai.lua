-- AI code chat using OpenAI's GPT models
-- https://github.com/Bryley/neoai.nvim

return {
	"Bryley/neoai.nvim",
	dependencies = {
        "MunifTanjim/nui.nvim",
    },
	config = function()
        require("neoai").setup({
            -- Options go here
    	})
	end,
}
