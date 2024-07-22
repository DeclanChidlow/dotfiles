-- Fuzzy finder
-- https://github.com/ibhagwan/fzf-lua

return {
	"ibhagwan/fzf-lua",
	config = function()
		local map = vim.keymap.set
		local fzf = require('fzf-lua')

		map("n", "ff", fzf.files, { desc = "Find files" })
		map("n", "gr", fzf.grep, { desc = "Grep" })
		map("n", "b", fzf.buffers, { desc = "Find buffers" })

		map("n", "ss", fzf.spell_suggest, { desc = "Spell suggest" })
		map("n", "ft", fzf.filetypes, { desc = "Change filetypes" })
		map("n", "km", fzf.keymaps, { desc = "View keymaps" })

		map("n", "lr", fzf.lsp_references, { desc = "LSP references" })
		map("n", "li", fzf.lsp_implementations, { desc = "LSP implementations" })
		map("n", "ld", fzf.lsp_definitions, { desc = "LSP definitions" })
		map("n", "ls", fzf.lsp_document_symbols, { desc = "LSP document symbols" })
		map("n", "la", fzf.lsp_code_actions, { desc = "LSP code actions" })
	end,
}
