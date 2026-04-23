return {
  lazyplugins = {
    { 'folke/tokyonight.nvim', enabled = false },
    require 'colorschemes.plugins.gruvbox',
  },
  set_options = function()
    require 'lvim.options'
  end,
  set_keymaps = function()
    require 'lvim.keymaps'
  end,
}
