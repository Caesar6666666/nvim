local dap = require("dap")


require("dapui").setup()

dap.adapters.cppdbg = {
    id = "cppdbg",
    type = 'executable',
    command = "/home/caesar/.local/share/nvim/mason/bin/OpenDebugAD7",
}
dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,

        cwd = "${workspaceFolder}",
        stopAtEntry = true,
    },
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
