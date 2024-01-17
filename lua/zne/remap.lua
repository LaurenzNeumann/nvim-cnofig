vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFocus)
vim.g.showcmd = true

vim.keymap.set("n", "<leader>z", function()
   vim.cmd.w()
   vim.cmd.BufferClose()
end) 

