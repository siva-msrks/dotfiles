return {
    "stevearc/conform.nvim",

    -- Format on save
    event = "BufWritePre",

    opts = {
        -- Formatters to be used for the languages
        formatters_by_ft = {
            c = { "clang-format" },
            cpp = { "clang-format" },
            css = { "prettier" },
            html = { "prettier" },
            lua = { "stylua" },
            python = { "ruff" },
            sh = { "shfmt" },
        },

        formatters = {
            -- C/C++ specific configuration
            ["clang-format"] = {
                prepend_args = {
                    "-style={ \
                        IndentWidth: 4, \
                        TabWidth: 4, \
                        UseTab: Never, \
                        AccessModifierOffset: 0, \
                        IndentAccessModifiers: true, \
                        PackConstructorInitializers: Never \
                    }",
                },
            },

            -- Python specific configuration
            ["ruff"] = {
                prepend_args = {
                    "--fast",
                    "--line-length",
                    "189",
                },
            },
        },
    },
}
