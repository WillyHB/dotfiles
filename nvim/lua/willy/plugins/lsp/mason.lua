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
                "csharp_ls",
                "bashls",
                "lua_ls",
                "dockerls",
                "cmake",
                "html",
                "cssls",
                "ts_ls",
                "ast_grep",
                "rust_analyzer",
                --LINTERS
                "cppcheck",
                "bacon",
                "htmlhint",
                "cmakelint",
                "eslint_d",
                "luacheck",
                "shellcheck",
                "stylelint",
                "hadolint",
                "checkstyle",
            },
        })
    end,
}
