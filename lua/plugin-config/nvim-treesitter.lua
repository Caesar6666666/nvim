require 'nvim-treesitter.configs'.setup {
    -- 安装 language parser
    -- :TSInstallInfo 命令查看支持的语言
    ensure_installed = { "html", "css", "vim", "lua", "javascript", "typescript", "tsx", "c", "cpp", "python", "go",
        "cmake", "json", "rust" , "toml" },
    -- 启用代码高亮功能
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    auto_install = true,
    -- 启用增量选择
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            node_decremental = '<BS>',
            scope_incremental = '<TAB>',
        }
    },
    -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
    indent = {
        enable = false
    },
    rainbow = {
        enable = true,
        extended_mod = true,
        max_file_lines = nil,
    }
}
-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99
