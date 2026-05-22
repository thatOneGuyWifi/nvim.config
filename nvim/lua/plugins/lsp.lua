return {
        "neovim/nvim-lspconfig",
        lazy = false,
        dependencies = { "saghen/blink.cmp"},
        config = function()
                local capabilities = require("blink.cmp").get_lsp_capabilities()
                vim.api.nvim_create_autocmd('LspAttach', {
                        callback = function (ev)
                                local opts = {buffer = ev.buf, desc = "LSP"}
                                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                        end,
                })
                -- Markdown
                vim.lsp.config('marksman', {
                        capabilities = capabilities,
                        filetype = {'markdown'},
                        cmd = {'marksman', 'server'},
                })
                vim.lsp.enable('marksman')

                -- Lua
                vim.lsp.config('lua_ls', {capabilities = capabilities})
                vim.lsp.enable('lua_ls')

                -- Bash
                vim.lsp.config('bashls', {capabilities = capabilities})
                vim.lsp.enable('bashls')

                -- Javascript
                vim.lsp.config('ts_ls', {capabilities = capabilities})
                vim.lsp.enable('ts_ls')

                -- HTML
                vim.lsp.config('html', {capabilities = capabilities})
                vim.lsp.enable('html')

                -- CSS
                vim.lsp.config('cssls', {capabilities = capabilities})
                vim.lsp.enable('cssls')

                -- Python
                vim.lsp.config('pyright', {capabilities = capabilities})
                vim.lsp.enable('pyright')
                end,
        }
