local map = vim.keymap.set

-- tabs
map('n', '<leader>tl', '<cmd>tablast<cr>', { desc = 'Last Tab' })
map('n', '<leader>to', '<cmd>tabonly<cr>', { desc = 'Close Other Tabs' })
map('n', '<leader>tf', '<cmd>tabfirst<cr>', { desc = 'First Tab' })
map('n', '<leader>tn', '<cmd>tabnew<cr>', { desc = 'New Tab' })
map('n', '<leader>t]', '<cmd>tabnext<cr>', { desc = 'Next Tab' })
map('n', '<leader>td', '<cmd>tabclose<cr>', { desc = 'Close Tab' })
map('n', '<leader>t[', '<cmd>tabprevious<cr>', { desc = 'Previous Tab' })
map('n', ']t', '<cmd>tabnext<cr>', { desc = 'Next Tab' })
map('n', '[t', '<cmd>tabprevious<cr>', { desc = 'Previous Tab' })
