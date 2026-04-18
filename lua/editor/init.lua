return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  require 'editor/gitsigns',
  require 'editor/which-key',
  require 'editor/lazydev',

  { 'Bilal2453/luvit-meta', lazy = true },
  require 'editor/nvim-lspconfig',
  require 'editor/conform',

  require 'editor/nvim-cmp',
  require 'colorschemes/plugins/tokyonight',
  require 'editor/todo-comments',

  require 'editor/mini',
  require 'editor/nvim-treesitter',
}
