vim.keymap.set('n', '<leader>r', ':source $MYVIMRC<CR>', { noremap = true })

vim.keymap.set('n', ';', ':', { noremap = true })

-- Easy window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })

-- Window resizing
vim.keymap.set('n', '<S-Up>', ':resize +2<CR>', { noremap = true })
vim.keymap.set('n', '<S-Down>', ':resize -2<CR>', { noremap = true })
vim.keymap.set('n', '<S-Left>', ':vertical resize -2<CR>', { noremap = true })
vim.keymap.set('n', '<S-Right>', ':vertical resize +2<CR>', { noremap = true })

vim.keymap.set('v', '<leader>s', ':sort<CR>', { noremap = true })

-- Copy relative path of current file to clipboard
vim.keymap.set('n', '<leader>cp', function()
  local relative_path = vim.fn.expand('%')
  vim.fn.setreg('+', relative_path)
  print('Copied to clipboard: ' .. relative_path)
end, { noremap = true, desc = 'Copy relative path to clipboard' })
