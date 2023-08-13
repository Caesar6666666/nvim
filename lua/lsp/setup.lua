require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

-- mason-lspconfig uses the `lspconfig` server names in the APIs it exposes - not `mason.nvim` package names
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
require("mason-lspconfig").setup({
    -- 确保安装，根据需要填写
    ensure_installed = {
        "lua_ls",
        "bashls",
        "clangd",
        "cmake",
        "pyright",
        "rust_analyzer",
    },
})

local lspconfig = require('lspconfig')

require("mason-lspconfig").setup_handlers({
    function (server_name)
        require("lspconfig")[server_name].setup{}
    end,
    -- Next, you can provide targeted overrides for specific servers.
    ["lua_ls"] = function ()
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        }
    end,

})
