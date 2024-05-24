-- Fuzzy finder
-- https://github.com/ibhagwan/fzf-lua

return {
	"ibhagwan/fzf-lua",

	 init = function()
		vim.keymap.set("n", "g", "<cmd>lua require('fzf-lua').grep()<CR>")
		vim.keymap.set("n", "g/", "<cmd>lua require('fzf-lua').grep_cword()<CR>")
		vim.keymap.set("n", "ss", "<cmd>lua require('fzf-lua').spell_suggest()<CR>")
		vim.keymap.set("n", "ft", "<cmd>lua require('fzf-lua').filetypes()<CR>")
		vim.keymap.set("n", "km", "<cmd>lua require('fzf-lua').keymaps()<CR>")
		
		-- LSP specific
		vim.keymap.set("n", "lr", "<cmd>lua require('fzf-lua').lsp_references()<CR>")
		vim.keymap.set("n", "li", "<cmd>lua require('fzf-lua').lsp_implementations()<CR>")
		vim.keymap.set("n", "ld", "<cmd>lua require('fzf-lua').lsp_definitions()<CR>")
	end,
}
