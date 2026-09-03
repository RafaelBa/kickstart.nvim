local neo_tree = require 'lazyvim.plugins.neo-tree'
local neo_tree_table = neo_tree[1]
local dependencies = neo_tree_table.dependencies or {}
-- local neotree_opts = neo_tree_table.opts or {}
-- local neotree_window = neotree_opts or {}
-- TODO: 1) When the config gets moved from lazyvim/ merge this into the config
table.insert(dependencies, 'nvim-tree/nvim-web-devicons')
neo_tree_table.dependencies = dependencies

neo_tree_table.opts.window.position = 'float'
-- neotree_window.position = 'float'
-- NOTE: netrw-like - opens buffer in current window
-- neotree_window.position = 'current'
-- neotree_opts.window = neotree_window
-- neo_tree_table.opts = neotree_opts
-- TODO: 1) end

return neo_tree
