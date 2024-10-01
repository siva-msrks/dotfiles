return {
    "rshkarin/mason-nvim-lint",
    event = "VeryLazy",
    dependencies = { "mfussenegger/nvim-lint" },

    opts = {
        ensure_installed = { "luacheck" },
        automatic_installation = false,
    },
}
