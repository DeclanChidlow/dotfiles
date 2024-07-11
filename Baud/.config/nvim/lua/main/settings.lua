local g = vim.g
local o = vim.o
local a = vim.api
local wo = vim.wo
local bo = vim.bo

-- File type detection
o.filetype = on

-- Highlight current location
o.cursorline = true
o.cursorlineopt = "screenline"
o.cursorcolumn = true

-- Disable 'How to Disable Mouse'
a.nvim_command('aunmenu PopUp.How-to\\ disable\\ mouse')
a.nvim_command('aunmenu PopUp.-1-')

-- Show line number and dynamically activate relative line numbers
o.number = true
a.nvim_create_autocmd(
	{ "BufEnter", "FocusGained", "InsertLeave", "WinEnter" },
	{
		pattern = "*",
		command = "if &nu && mode() != 'i' | set rnu | endif",
	}
)
a.nvim_create_autocmd(
	{ "BufLeave", "FocusLost", "InsertEnter", "WinLeave" },
	{
		pattern = "*",
		command = "if &nu | set nornu | endif",
	}
)

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

-- Shows the effects of a substitution in another panel
o.inccommand = "split"

-- Allow code folding (mostly configured with treesitter)
o.foldlevel = 3

-- Better indents
o.autoindent = true
o.breakindent = true
o.copyindent = true

-- Better tabs
o.tabstop = 2
o.shiftwidth = 2

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

-- Highlight on yank
local highlight_group = a.nvim_create_augroup("YankHighlight", { clear = true })
a.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

-- Improve netrw
g.netrw_liststyle = 3
g.netrw_winsize = -30

-- Disable unused features
local disabled_built_ins = {
	"netrwFileHandlers",
	"getscript",
	"getscriptPlugin",
	"vimball",
	"vimballPlugin",
	"2html_plugin",
	"logipat",
	"rrhelper",
	"spellfile_plugin",
	"matchit"
}

for _, plugin in pairs(disabled_built_ins) do
	vim.g["loaded_" .. plugin] = 1
end
