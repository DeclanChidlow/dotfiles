local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- File Type
o.filetype = true
o.filetypeplugin = true
o.filetypeindent = true

-- Highlight current location
o.cursorline = true
o.cursorcolumn = true

-- Disable 'How to Disable Mouse'
vim.cmd[[aunmenu PopUp.How-to\ disable\ mouse]]
vim.cmd[[aunmenu PopUp.-1-]]

-- Show line number
o.number = true

-- No line wrap
o.wrap = false

-- Configure colours
o.termguicolors = true
vim.cmd[[colorscheme srcery]]

-- Spell Check
o.spelllang = 'en_au'
o.spell = true


--
-- Plugin Config
--

local ccc = require("ccc")
local mapping = ccc.mapping
ccc.setup({
	highlighter = {
    		---@type boolean
    		auto_enable = true
	}
})

require('gitsigns').setup()
