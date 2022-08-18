local dap = require('dap')
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = 'OpenDebugAD7',
}

local dap = require('dap')
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
    args = function()
        local argument_string = vim.fn.input('Program arguments: ')
        if argument_string == "" then
            return {}
        end
        return vim.fn.split(argument_string, " ", true)
    end,

    setupCommands = {
      {
         text = '-enable-pretty-printing',
         description =  'enable pretty printing',
         ignoreFailures = false
      },
    },

  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = '/usr/bin/gdb',
    cwd = '${workspaceFolder}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,

    args = function()
        local argument_string = vim.fn.input('Program arguments: ')
        if argument_string == "" then
            return {}
        end
        return vim.fn.split(argument_string, " ", true)
    end,

    setupCommands = {
      {
         text = '-enable-pretty-printing',
         description =  'enable pretty printing',
         ignoreFailures = false
      },
    },
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
