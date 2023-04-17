local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- File type detection
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

-- Improve search
o.ignorecase = true
o.smartcase = true
o.hlsearch = false

-- Better tabs
o.tabstop = 4
o.shiftwidth = 4

-- Spell check
o.spelllang = 'en_au'
o.spell = true

-- Use system clipboard
o.clipboard = 'unnamedplus'
