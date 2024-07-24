-- Fuzzy finder
-- https://github.com/ibhagwan/fzf-lua

return {
	"ibhagwan/fzf-lua",
	config = function()
		local map = vim.keymap.set
		local fzf = require('fzf-lua')

		map("n", "gr", fzf.grep, { desc = "Grep" })
		map("n", "grc", fzf.grep_cword, { desc = "Grep word under cursor" })
		map("n", "ff", fzf.files, { desc = "Find files" })
		map("n", "b", fzf.buffers, { desc = "Find buffers" })

		map("n", "ss", fzf.spell_suggest, { desc = "Spell suggest" })
		map("n", "ft", fzf.filetypes, { desc = "Change filetypes" })
		map("n", "km", fzf.keymaps, { desc = "View keymaps" })

		map("n", "ch", fzf.command_history, { desc = "Command history" })
		map("n", "sh", fzf.search_history, { desc = "Search history" })

		map("n", "lr", fzf.lsp_references, { desc = "LSP references" })
		map("n", "ld", fzf.lsp_definitions, { desc = "LSP definitions" })
		map("n", "ltd", fzf.lsp_typedefs, { desc = "LSP type definitions" })
		map("n", "li", fzf.lsp_implementations, { desc = "LSP implementations" })
		map("n", "lds", fzf.lsp_document_symbols, { desc = "LSP document symbols" })
		map("n", "lws", fzf.lsp_workspace_symbols, { desc = "LSP workspace symbols" })
		map("n", "ca", fzf.lsp_code_actions, { desc = "LSP code actions" })
	end,
}
