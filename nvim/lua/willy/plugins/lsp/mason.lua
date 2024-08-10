return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    config = function()

        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        mason.setup()

        mason_lspconfig.setup({
            ensure_installed = {
                "clangd",
                "omnisharp",
                "bashls",
                "lua_ls",
                "dockerls",
                "cmake",
                "html",
                "cssls",
            },
        })
    end,
}
