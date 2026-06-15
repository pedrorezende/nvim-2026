return {
  {
    "https://codeberg.org/andyg/leap.nvim",
    enabled = false,
  },
  {
    "ggandor/flit.nvim",
    enabled = false,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        char = {
          enabled = true,
          jump_labels = true,
          config = function(opts)
            -- disable jump labels when using a count, when recording/executing
            -- registers, or when in operator-pending mode (e.g. df<char>) so
            -- the operator completes immediately instead of waiting for a label
            opts.jump_labels = opts.jump_labels
              and vim.v.count == 0
              and vim.fn.reg_executing() == ""
              and vim.fn.reg_recording() == ""
              and not vim.fn.mode(true):find "o"
          end,
          jump = {
            autojump = true,
            nohlsearch = true,
          },
          label = {
            after = false,
            before = true,
          },
        },
      },
      jump = {
        autojump = true,
        nohlsearch = true,
      },
      label = {
        after = false,
        before = true,
      },
    },
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
  },
}
