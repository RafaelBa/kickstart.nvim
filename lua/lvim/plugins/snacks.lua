return {
  "folke/snacks.nvim",
  opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>su", function() Snacks.picker.undo() end, desc = "[U]ndotree" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "[K]eymaps" },
    { "<leader>sp", function() Snacks.picker.lazy() end, desc = "Search for [P]lugin Spec" },
    { "<leader>sb", function() Snacks.picker.grep_buffers() end, desc = "Search in open [B]uffers" },
  },
}
