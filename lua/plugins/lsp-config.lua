return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
            vim.diagnostic.config({
                -- virtual_lines = true,
                virtual_text = true,
            })
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = { "neovim/nvim-lspconfig" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            vim.lsp.config("*", {
                root_marker = { ".git" },
                capabilities = capabilities,
            })

            vim.lsp.enable("css_ls")
            vim.lsp.enable("omnisharp")
            vim.lsp.enable("docker_language_server_ls")
            vim.lsp.enable("eslint_ls")
            vim.lsp.enable("html_ls")
            vim.lsp.enable("lua_ls")

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            -- vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
        end,
    },
}
