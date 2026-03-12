-- Persistence is a simple lua plugin for automated session management.
-- - automatically saves the active session under ~/.local/state/nvim/sessions on exit

-- NOTE: This seems to work fine, although we set the keymap before the plugin is even loaded

vim.keymap.set('n', '<leader>qs', function()
  require('persistence').load()
end, { desc = '[S]ession restore' })

vim.keymap.set('n', '<leader>qS', function()
  require('persistence').select()
end, { desc = '[S]elect session' })

-- load the last session - irrespective of last sessions dir and branch, and this sessions dir and branch
vim.keymap.set('n', '<leader>ql', function()
  require('persistence').load { last = true }
end, { desc = 'load [L]ast session' })

-- stop Persistence => session won't be saved on exit
vim.keymap.set('n', '<leader>qd', function()
  require('persistence').stop()
end, { desc = "[D]on't persist session" })

return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
    -- :h 'sessionoptions'
    -- Defaults (2026-03-12)
    -- {
    --   dir = vim.fn.stdpath("state") .. "/sessions/", -- directory where session files are saved
    --   -- minimum number of file buffers that need to be open to save
    --   -- Set to 0 to always save
    --   need = 1,
    --   branch = true, -- use git branch to save session
    -- }
  },
}
