vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFocus)
vim.g.showcmd = true

vim.keymap.set("n", "<leader>z", function()
   vim.cmd.w()
   vim.cmd.BufferClose()
end) 
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
vim.keymap.set('t', '<C-p>', [[<C-\><C-n><Cmd>wincmd p<CR>]])

