vim.g.clipboard = {
    name = "wl-clipboard",
    copy = {
        ["+"] = "wl-copy -n",
        ["*"] = "wl-copy -n",
    },
    paste = {
        ["+"] = "wl-paste -n",
        ["*"] = "wl-paste -n",
    },
    cache_enabled = 0,
}

vim.opt.relativenumber = true
vim.opt.number = true;
vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8        
vim.opt.expandtab = false
vim.opt.wrap = true;
vim.g.showbreak = '↪'
vim.opt.smartindent = true;

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.o.scrolloff = 8
vim.o.syntax = 'enable'
