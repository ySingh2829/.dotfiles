require('telescope').load_extension('dap')

-- Python
require('dbg.python')

-- C/C++ and Rust
require('dbg.gdb')

-- Javascript
require('dbg.javascript')

-- nvim-dap-virtual-text. Show virtual text for current frame
vim.g.dap_virtual_text = true

-- nvim-dap-ui
require("dapui").setup()

