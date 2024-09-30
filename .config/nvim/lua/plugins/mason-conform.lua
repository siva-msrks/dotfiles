return {
    "zapling/mason-conform.nvim",
    event = "VeryLazy",
    dependencies = { "stevearc/conform.nvim" },

    opts = {
        -- List of formatters to be installed by Mason
        ensure_installed = { "clang-format", "shfmt", "stylua" },
    },
}
