require("toggleterm").setup({
    direction = 'float'
})
vim.keymap.set('n','<leader>c', vim.cmd.ToggleTerm) 
