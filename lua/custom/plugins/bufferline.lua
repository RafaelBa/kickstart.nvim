local is_enabled = false

-- TODO: this is not how this should be solved
if vim.g.neovide then
  is_enabled = true
end

return { 'akinsho/bufferline.nvim', version = '*', dependencies = 'nvim-tree/nvim-web-devicons', enabled = is_enabled }
