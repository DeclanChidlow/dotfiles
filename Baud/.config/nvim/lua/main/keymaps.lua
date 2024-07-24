local map = vim.keymap.set

-- Enter into brackets
map("i", "<>", "<><Left>", { desc = "Enter into angled brackets" })
map("i", "()", "()<Left>", { desc = "Enter into round brackets" })
map("i", "{}", "{}<Left>", { desc = "Enter into curly brackets" })
map("i", "[]", "[]<Left>", { desc = "Enter into square brackets" })

-- Enter into quotes
map("i", '""', '""<Left>', { desc = "Enter into double quotes" })
map("i", "''", "''<Left>", { desc = "Enter into single quotes" })
map("i", "``", "``<Left>", { desc = "Enter into backticks" })

-- Move by screenline
map({ "n", "v" }, "<Up>", "gk", { desc = "Move up a screenline" })
map({ "n", "v" }, "<Down>", "gj", { desc = "Move down a screenline" })
map("i", "<Up>", "<C-o>gk", { desc = "Move up a screenline" })
map("i", "<Down>", "<C-o>gj", { desc = "Move down a screenline" })

-- Add empty lines
map('n', 'O', "O<Esc>", { desc = "Append a new line below the current line" })
map('n', 'o', "o<Esc>", { desc = "Append a new line above the current line" })

-- Language server protocol
map("n", "cr", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "h", vim.lsp.buf.hover, { desc = "Hover" })
map("n", "]]", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "[[", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
