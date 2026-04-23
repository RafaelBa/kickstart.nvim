return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.cmd.colorscheme 'gruvbox'

    -- set GitSigns' current line blame to a easier to read colour
    vim.api.nvim_set_hl(0, 'GitSignsCurrentLineBlame', { fg = '#827344' })
  end,
}
