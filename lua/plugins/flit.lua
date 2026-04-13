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
