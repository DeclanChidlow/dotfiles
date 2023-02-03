local keyset = vim.keymap.set
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

map('i', '<>', '<><Left>')
map('i', '()', '()<Left>')
map('i', '{}', '{}<Left>')
map('i', '[]', '[]<Left>')

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
