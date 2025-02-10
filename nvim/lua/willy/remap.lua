vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e<leader>", vim.cmd.Ex)
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "nzzzv")

vim.keymap.set("n", "<Leader>o", "o<Esc>k")
vim.keymap.set("n", "<Leader>O", "O<Esc>j")

vim.keymap.set("n", "<Leader>p", "o<Esc>p")
vim.keymap.set("n", "<Leader>P", "O<Esc>p")
--vim.keymap.set("x", "<leader>p", "\"_dP")
--SEARCH AND REPLACE
vim.g.mapleader = ","
--Search for current word on line and replace
vim.keymap.set("n", "<leader>sl", ":s/\\<<C-r><C-w>\\>//gc<Left><Left><Left>")
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
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-l>", "<C-w>l")
vim.keymap.set("n", "<M-o>", "<C-w>s")
vim.keymap.set("n", "<M-p>", "<C-w>v")
vim.keymap.set("n", "<M-q>", "<C-w>q")
vim.keymap.set("n", "<M-H>", "<C-w>H")
vim.keymap.set("n", "<M-J>", "<C-w>J")
vim.keymap.set("n", "<M-K>", "<C-w>K")
vim.keymap.set("n", "<M-L>", "<C-w>L")
vim.keymap.set("n", "<M-w>", "<C-w>w")

vim.keymap.set("n", "<C-l>", ":bnext<CR>")
vim.keymap.set("n", "<C-h>", ":bprev<CR>")
vim.keymap.set("n", "<C-q>", ":bd<CR>")

--vim.keymap.set("n", "<", "<C-w>-5")
--vim.keymap.set("n", "<leader><C-k>", "<C-w>+5")
--vim.keymap.set("n", "<leader><C-h>", "<C-w><5")
--vim.keymap.set("n", "<leader><C-l>", "<C-w>>5")

--NAVIGATION

--move one line down
vim.keymap.set("n", "<C-j>", "<C-e>")
--move one line up
vim.keymap.set("n", "<C-k>", "<C-y>")

---YANK/PASTE
vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("n", "p", "\"+p")
vim.keymap.set("n", "d", "\"+yyd");

vim.keymap.set("n", ",y", "\"ay")
vim.keymap.set("n", ",p", "\"ap")
vim.keymap.set("n", ",d", "\"ayyd")

