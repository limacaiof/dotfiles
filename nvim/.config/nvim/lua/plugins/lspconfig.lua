-- lsp to be imported by default, with no extra configuration
local servers = {
    "lua_ls",
    "docker_compose_language_service",
    "dockerls",
    "jedi_language_server",
    "eslint",
    "ts_ls",
}

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = servers,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- default keymaps for all lsp
            local on_attach = function(_, bufnr)
                local keymap = vim.keymap
                local opts = { noremap = true, silent = true, buffer = bufnr }
                keymap.set("n", "ca", vim.lsp.buf.hover, opts)
                keymap.set("n", "cd", vim.lsp.buf.definition, opts)
                keymap.set("n", "<leader>cr", vim.lsp.buf.rename, opts)
                keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
            end

            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            for _, a in ipairs(servers) do
                lspconfig[a].setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                })
            end
            -- extra configuration for lsp
            lspconfig.ts_ls.setup({
                on_attach = on_attach,
                capabilities = capabilities,
                init_options = {
                    preferences = {
                        disableSuggestions = true
                    }
                },
                filetypes = {
                    "javascript",
                    "typescript",
                    "vue",
                },
            })
        end,
    },
}
