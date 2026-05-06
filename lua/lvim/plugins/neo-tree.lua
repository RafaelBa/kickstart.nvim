local neo_tree = require 'lazyvim.plugins.neo-tree'
local neo_tree_table = neo_tree[1]
local dependencies = neo_tree_table.dependencies or {}
-- TODO: When the config gets moved from lazyvim/ merge this into the config
table.insert(dependencies, 'nvim-tree/nvim-web-devicons')
neo_tree_table.dependencies = dependencies

return neo_tree
