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

-- Move lines vertically
map({ "i", "n" }, "<A-Up>", "<Esc>:m .-2<CR>==")
map({ "i", "n" }, "<A-Down>", "<Esc>:m .+1<CR>==")

-- Format file
map({ "n", "v" }, "f", ':lua require("conform").format()<CR>')
