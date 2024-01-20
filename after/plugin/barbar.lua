require('barbar').setup({
   icons = {
        button = "x";
   },
   sidebar_filetypes = {
        NvimTree = true
   },
   letters = 'asdfjkl;ghnmxcvbyiowerutzqpASDFJKLGHNMXCVBYIOWERUTZQP'
})

vim.keymap.set('n', '<leader>t', vim.cmd.BufferNext)
vim.keymap.set('n', '<leader>T', vim.cmd.BufferPrevious)
vim.keymap.set('n', '<leader>p', vim.cmd.BufferPick)
