return {
    "mfussenegger/nvim-lint",
    event = "LazyFile",
    opts = {
        events = { "BufEnter", "BufWritePost", "InsertLeave" },

        linters_by_ft = {
            lua = { "luacheck" },
            python = { "ruff" },
        },

        linters = {
            luacheck = {
                args = {
                    "--globals",
                    "vim",
                    "--formatter",
                    "plain",
                    "--codes",
                    "--ranges",
                    "-",
                },
            },
        },
    },
}
