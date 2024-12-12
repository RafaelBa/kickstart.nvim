-- Key binding inspired by lazyvim https://www.lazyvim.org/configuration/general#keymaps
-- TODO: Write / use script to change buffer before deleting this buffer
-- deleting a buffer that is open in a window will close the window, too
vim.keymap.set('n', '<leader>bd', '<cmd>bdel<cr>', { desc = 'Delete Buffer' })
vim.keymap.set('n', '[b', '<cmd>bprev<cr>', { desc = 'Prev [b]uffer' })
vim.keymap.set('n', ']b', '<cmd>bnext<cr>', { desc = 'Next [b]uffer' })
vim.keymap.set('n', '<leader>|', '<cmd>vsplit<cr>', { desc = 'Vertical Split' })
vim.keymap.set('n', '<leader>-', '<cmd>split<cr>', { desc = 'Horizontal Split' })