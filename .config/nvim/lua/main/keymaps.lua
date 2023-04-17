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

-- Move keys
map('', '<M-n>', 'h')
map('', '<M-n>', 'h')
map('', '<M-e>', 'j')
map('', '<M-e>', 'j')
map('', '<M-i>', 'k')
map('', '<M-i>', 'k')
map('', '<M-o>', 'l')
map('', '<M-o>', 'l')
