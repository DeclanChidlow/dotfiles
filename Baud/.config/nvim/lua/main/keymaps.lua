local keyset = vim.keymap.set
local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- Better brackets/quotes
map('i', '<>', '<><Left>')
map('i', '()', '()<Left>')
map('i', '{}', '{}<Left>')
map('i', '[]', '[]<Left>')

map('i', '""', '""<Left>')
map('i', "''", "''<Left>")
map('i', '``', '``<Left>')

-- Make move by screenline
map({ 'n', 'v' }, '<Up>', 'gk')
map('i', '<Up>', '<C-o>gk')
map({ 'n', 'v' }, '<Down>', 'gj')
map('i', '<Down>', '<C-o>gj')
