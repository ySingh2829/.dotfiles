local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '

-- nvim tree mapping
map('n', '<leader>t', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>gt', ':NvimTreeFocus<CR>', opts)

-- telescope mapping
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)

-- dap ui mapping
map('n', '<leader>dui', ":lua require'dapui'.toggle()<CR>", opts)

-- dap debugger mappings
map('n', '<F5>', ":lua require'dap'.continue()<CR>", opts)
map('n', '<F10>', ":lua require'dap'.step_over()<CR>", opts)
map('n', '<F11>', ":lua require'dap'.step_into()<CR>", opts)
map('n', '<F12>', ":lua require'dap'.step_out()<CR>", opts)
map('n', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>", opts)
map('n', '<leader>B', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
map('n', '<leader>lp', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
map('n', '<leader>dr', ":lua require'dap'.repl.open()<CR>", opts)
map('n', '<leader>dl', ":lua require'dap'.run_last()<CR>", opts)
