return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = { "Neotree" },
  -- drop image preview; it’s slow
  keys = {
    { "<leader>e", "<cmd>Neotree reveal float<cr>" },
  },
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true,
        -- Set to true if you want auto expanded dirs to close
        leave_dirs_open = false,
      },
    },
    window = {
      -- floating is heavier; docked left is faster
      position = "float",
      width = 28,
    },
  },
}
