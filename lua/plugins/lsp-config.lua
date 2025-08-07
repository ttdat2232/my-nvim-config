return {
    {
        "mason-org/mason.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "csharp_ls",
                "docker-language-server",
                "vscode-eslint-language-server",
                "vscode-html-language-server",
                "vscode-css-language-server",
            },
        },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = { "neovim/nvim-lspconfig" },
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            vim.lsp.config("*", {
                root_marker = { ".git" },
                capabilities = capabilities,
            })

            vim.lsp.enable("csharp_ls")
            vim.lsp.enable("css_ls")
            vim.lsp.enable("docker_language_server_ls")
            vim.lsp.enable("eslint_ls")
            vim.lsp.enable("html_ls")
            vim.lsp.enable("lua_ls")

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
