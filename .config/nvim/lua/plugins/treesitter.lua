return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        ensure_installed = {
            "bash",
            "c",
            "cmake",
            "cpp",
            "lua",
            "luadoc",
            "make",
            "markdown",
            "printf",
            "python",
            "toml",
            "vim",
            "vimdoc",
            "yaml",
        },

        highlight = {
            enable = true,
            use_languagetree = true,
        },

        indent = { enable = true },
    },
}
