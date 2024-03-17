local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- File type detection
o.filetype = on

-- Highlight current location
o.cursorline = true
o.cursorlineopt = "screenline"
o.cursorcolumn = true

-- Disable 'How to Disable Mouse'
vim.cmd([[aunmenu PopUp.How-to\ disable\ mouse]])
vim.cmd([[aunmenu PopUp.-1-]])

-- Show line number and dynamically activate relative line numbers
o.number = true
vim.cmd([[
  augroup numbertoggle
    autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
  augroup END
]])

-- No line wrap and better scrolling
o.wrap = false
o.scrolloff = 3

-- Persistent undo between sessions
o.undofile = true

-- Disable unneeded backup
o.backup = false
o.writebackup = false

-- Improve search
o.ignorecase = true
o.smartcase = true
o.hlsearch = false

-- Allow code folding
o.foldmethod = "indent"
o.foldlevel = 3

-- Better indents
o.autoindent = true
o.breakindent = true
o.copyindent = true

-- Better tabs
o.tabstop = 4
o.shiftwidth = 4

-- Spell check
o.spelllang = "en_au"
o.spell = true

-- Use system clipboard
o.clipboard = "unnamedplus"

-- Decrease update time
o.updatetime = 250
o.timeoutlen = 300

-- Set max number of items in popup menus
o.pumheight = 5

-- Capabilities required for the Visual Studio LSPs
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- https://nathan-long.com/blog/modern-javascript-tooling-in-neovim/

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
