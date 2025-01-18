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
        c = {"cppcheck"},
        rust = {"bacon"},
        cpp = {"cppcheck"},
        html = {"htmlhint"},
        cmake = {"cmakelint"},
        lua = {"luacheck"},
        bash = {"shellcheck"},
        css = {"stylelint"},
        docker = {"hadolint"},
        java = {"checkstyle"},
    }
    end,
}
