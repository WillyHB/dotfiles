vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e<leader>", vim.cmd.Ex)
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n",  "n", "nzzzv")
vim.keymap.set("n", "N", "nzzzv")

vim.keymap.set("n", "<Leader>o", "o<Esc>k")
vim.keymap.set("n", "<Leader>O", "O<Esc>j")

vim.keymap.set("n", "<Leader>p", "o<Esc>p");
vim.keymap.set("n", "<Leader>P", "O<Esc>p");
--vim.keymap.set("x", "<leader>p", "\"_dP")
--SEARCH AND REPLACE
vim.g.mapleader = "\\"
--Search for current word on line and replace
vim.keymap.set("n", "<leader>s", ":s/\\<<C-r><C-w>\\>//gc<Left><Left><Left>")
--Search for current word in file and replace
vim.keymap.set("n", "<leader>ss", ":%s/\\<<C-r><C-w>\\>//gc<Left><Left><Left>")
--Search for current selection in line and replace
vim.keymap.set("v", "<leader>s", ":s/<C-r>h//gc<Left><Left><Left>")

--Setup for search and replace in line
vim.keymap.set("n", "<leader>r", ":s//gc<Left><Left><Left>")
--Setup for search and replace in file
vim.keymap.set("n", "<leader>rr", ":%s//gc<Left><Left><Left>")
--Setup for search and replace for selection in line
vim.keymap.set("v", "<leader>r", ":s//gc<Left><Left><Left>")

--BUFFERS/WINDOWS/TABS
vim.g.mapleader = "n"
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>o", "<C-w>s")
vim.keymap.set("n", "<leader>p", "<C-w>v")
vim.keymap.set("n", "<leader>q", "<C-w>q")
vim.keymap.set("n", "<leader>H", "<C-w>H")
vim.keymap.set("n", "<leader>J", "<C-w>J")
vim.keymap.set("n", "<leader>K", "<C-w>K")
vim.keymap.set("n", "<leader>L", "<C-w>L")
vim.keymap.set("n", "<leader>w", "<C-w>w")

vim.keymap.set("n", "<leader><C-j>", "<C-w>-5")
vim.keymap.set("n", "<leader><C-k>", "<C-w>+5")
vim.keymap.set("n", "<leader><C-h>", "<C-w><5")
vim.keymap.set("n", "<leader><C-l>", "<C-w>>5")
