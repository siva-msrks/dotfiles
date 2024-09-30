return {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    dependencies = { "neovim/nvim-lspconfig" },

    opts = {
        -- List of LSP servers to install by default
        ensure_installed = { "bashls", "clangd", "cssls", "html", "lua_ls", "pyright" },
    },
}
