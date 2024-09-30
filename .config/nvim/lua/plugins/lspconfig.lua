return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },
    },

    opts = {
        servers = {
            -- pyright will be automatically installed with mason and loaded with lspconfig
            pyright = {
                settings = {
                    python = {
                        analysis = {
                            typeCheckingMode = "off", -- Disable type checking diagnostics
                        },
                    },
                },
            },
        },
    },
}
