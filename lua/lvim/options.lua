require 'lazyvim.options'

vim.g.snacks_animate = false

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true
vim.g.deprecation_warnings = true

-- TODO: see if spellcheck is slowing start-up time down and whether you need a
-- "post-init-options.lua"
-- activate spellcheck
vim.opt.spell = true
vim.opt.spelllang = { 'en_gb', 'de' }
