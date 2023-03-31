local keyset = vim.keymap.set
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

map('i', '<>', '<><Left>')
map('i', '()', '()<Left>')
map('i', '{}', '{}<Left>')
map('i', '[]', '[]<Left>')

map('i', '""', '""<Left>')
map('i', "''", "''<Left>")
map('i', '``', '``<Left>')

-- Move keys
map('n', '<M-n>', 'h')
map('v', '<M-n>', 'h')
map('n', '<M-e>', 'j')
map('v', '<M-e>', 'j')
map('n', '<M-i>', 'k')
map('v', '<M-i>', 'k')
map('n', '<M-o>', 'l')
map('v', '<M-o>', 'l')

--
-- COC
--
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
