local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- Better brackets/quotes
map("i", "<>", "<><Left>")
map("i", "()", "()<Left>")
map("i", "{}", "{}<Left>")
map("i", "[]", "[]<Left>")

map("i", '""', '""<Left>')
map("i", "''", "''<Left>")
map("i", "``", "``<Left>")

-- Make move by screenline
map({ "n", "v" }, "<Up>", "gk")
map({ "n", "v" }, "<Down>", "gj")
map("i", "<Up>", "<C-o>gk")
map("i", "<Down>", "<C-o>gj")

-- Add empty lines
map('n', 'O', "O<Esc>")
map('n', 'o', "o<Esc>")
