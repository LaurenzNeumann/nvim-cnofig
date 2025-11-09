vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFocus)
vim.g.showcmd = true


vim.keymap.set("n", "<leader>x", function()
  local buf = vim.api.nvim_get_current_buf()
  local modifiable = vim.api.nvim_buf_get_option(buf, "modifiable")
  local modified = vim.api.nvim_buf_get_option(buf, "modified")

  if modifiable then
    if modified then
      vim.cmd("write")  -- Save changes
    end
  end
  vim.cmd("BufferClose") -- Force close if not modifiable
end, { desc = "Save and close buffer (force if unmodifiable)" })

vim.keymap.set("n", "<leader>X", function() 
  local buf = vim.api.nvim_get_current_buf()
  local modified = vim.api.nvim_buf_get_option(buf, "modified")
  if modified then
    -- Ask for confirmation if there are unsaved changes
    local choice = vim.fn.confirm(
      "Buffer has unsaved changes. Save before closing?",
      "&Yes\n&No\n&Cancel"
    )

    if choice == 1 then
      vim.cmd("write")
      vim.cmd("BufferClose")
    elseif choice == 2 then
      vim.cmd("BufferClose!")
    else
      -- Cancelled, do nothing
      return
    end
  else
    -- Safe to close directly
    vim.cmd("bdelete")
  end
end, { desc = "Force close buffer but ask for confirmation"})

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
vim.keymap.set('t', '<C-p>', [[<C-\><C-n><Cmd>wincmd p<CR>]])

-- the Tab changer 
vim.keymap.set('n', '<leader>t', vim.cmd.BufferNext)
vim.keymap.set('n', '<leader>T', vim.cmd.BufferPrevious)
vim.keymap.set('n', '<leader>pt', vim.cmd.BufferPick)

-- Claude Code
vim.keymap.set('n', '<leader>g', '<cmd>ClaudeCode<CR>' ,{ desc = "Toogle Claude Code _g_eneration"} )
