return
{
    "mfussenegger/nvim-lint",
    event = {
        "BufReadPre",
        "BufNewFile",
    },

    config = function()
    local lint = require("lint");

    lint.linters_by_ft = {
        javascript = {"eslint_d"},
        c = {"clangtidy"},
        rust = {"bacon"},
--        cpp = {"cppcheck"},
        html = {"htmlhint"},
        cmake = {"cmakelint"},
        lua = {"luacheck"},
        bash = {"shellcheck"},
        css = {"stylelint"},
        docker = {"hadolint"},
        java = {"checkstyle"},
		gdscript = {"gdlint"},
    }

vim.diagnostic.config({
  virtual_text = true, -- shows inline errors
  signs = true,        -- shows signs in gutter
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.keymap.set("n", "<leader>ee", vim.diagnostic.open_float)

vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
    end,
}
