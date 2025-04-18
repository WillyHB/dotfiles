vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({{import = "willy/plugins/"}, {import = "willy/plugins/lsp"}})
require('lualine').setup()
require('mason').setup()
require("mason-lspconfig").setup()

--require('hardtime').setup()
require('telescope').setup()

local builtin = require("telescope.builtin")

vim.keymap.set('n', '<M-f>', "<cmd>lua require('telescope.builtin').find_files({hidden = true})<cr>")
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
