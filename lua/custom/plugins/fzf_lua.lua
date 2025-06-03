return {
  'ibhagwan/fzf-lua',
  cmd = 'FzfLua',
  opts = function(_, opts)
    local fzf = require 'fzf-lua'
    local config = fzf.config
    local actions = fzf.actions

    -- Preview controls - taken from lazyvim
    config.defaults.keymap.fzf['ctrl-q'] = 'select-all+accept'
    config.defaults.keymap.fzf['ctrl-u'] = 'half-page-up'
    config.defaults.keymap.fzf['ctrl-d'] = 'half-page-down'
    config.defaults.keymap.fzf['ctrl-x'] = 'jump'
    config.defaults.keymap.fzf['ctrl-f'] = 'preview-page-down'
    config.defaults.keymap.fzf['ctrl-b'] = 'preview-page-up'
    config.defaults.keymap.builtin['<c-f>'] = 'preview-page-down'
    config.defaults.keymap.builtin['<c-b>'] = 'preview-page-up'
  end,
  keys = {
    -- TODO: Not sure if I'll need these
    -- { "<c-j>", "<c-j>", ft = "fzf", mode = "t", nowait = true },
    -- { "<c-k>", "<c-k>", ft = "fzf", mode = "t", nowait = true },
    { '<leader>m/', '<cmd>FzfLua live_grep<cr>', desc = 'Grep (Root Dir)' },
    { '<leader>m:', '<cmd>FzfLua command_history<cr>', desc = 'Command History' },
    { '<leader>m<space>', '<cmd>FzfLua files<cr>', desc = 'Find Files (Root Dir)' },
    -- find
    { '<leader>mfb', '<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>', desc = 'Buffers' },
    { '<leader>mff', '<cmd>FzfLua files<cr>', desc = 'Find Files (Root Dir)' },
    { '<leader>mfg', '<cmd>FzfLua git_files<cr>', desc = 'Find Files (git-files)' },
    { '<leader>mfr', '<cmd>FzfLua oldfiles<cr>', desc = 'Recent' },
    -- git
    { '<leader>mgc', '<cmd>FzfLua git_commits<CR>', desc = 'Commits' },
    { '<leader>mgs', '<cmd>FzfLua git_status<CR>', desc = 'Status' },
    -- search
    { '<leader>ms"', '<cmd>FzfLua registers<cr>', desc = 'Registers' },
    { '<leader>msa', '<cmd>FzfLua autocmds<cr>', desc = 'Auto Commands' },
    { '<leader>msb', '<cmd>FzfLua grep_curbuf<cr>', desc = 'Buffer' },
    { '<leader>msc', '<cmd>FzfLua command_history<cr>', desc = 'Command History' },
    { '<leader>msC', '<cmd>FzfLua commands<cr>', desc = 'Commands' },
    { '<leader>msd', '<cmd>FzfLua diagnostics_document<cr>', desc = 'Document Diagnostics' },
    { '<leader>msD', '<cmd>FzfLua diagnostics_workspace<cr>', desc = 'Workspace Diagnostics' },
    { '<leader>msg', '<cmd>FzfLua live_grep<cr>', desc = 'Grep (Root Dir)' },
    { '<leader>msh', '<cmd>FzfLua help_tags<cr>', desc = 'Help Pages' },
    { '<leader>msH', '<cmd>FzfLua highlights<cr>', desc = 'Search Highlight Groups' },
    { '<leader>msj', '<cmd>FzfLua jumps<cr>', desc = 'Jumplist' },
    { '<leader>msk', '<cmd>FzfLua keymaps<cr>', desc = 'Key Maps' },
    { '<leader>msl', '<cmd>FzfLua loclist<cr>', desc = 'Location List' },
    { '<leader>msM', '<cmd>FzfLua man_pages<cr>', desc = 'Man Pages' },
    { '<leader>msm', '<cmd>FzfLua marks<cr>', desc = 'Jump to Mark' },
    { '<leader>msR', '<cmd>FzfLua resume<cr>', desc = 'Resume' },
    { '<leader>msq', '<cmd>FzfLua quickfix<cr>', desc = 'Quickfix List' },
    { '<leader>msw', '<cmd>FzfLua grep_cword<cr>', desc = 'Word (Root Dir)' },
    { '<leader>msw', '<cmd>FzfLua grep_visual<cr>', mode = 'v', desc = 'Selection (Root Dir)' },
    { '<leader>muC', '<cmd>FzfLua colorschemes<cr>', desc = 'Colorscheme with Preview' },
    --   TODO: Fix these
    --   {
    --     '<leader>mss',
    --     function()
    --       require('fzf-lua').lsp_document_symbols {
    --         regex_filter = symbols_filter,
    --       }
    --     end,
    --     desc = 'Goto Symbol',
    --   },
    --   {
    --     '<leader>msS',
    --     function()
    --       require('fzf-lua').lsp_live_workspace_symbols {
    --         regex_filter = symbols_filter,
    --       }
    --     end,
    --     desc = 'Goto Symbol (Workspace)',
    --   },
  },
}
