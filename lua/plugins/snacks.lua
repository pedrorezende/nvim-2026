---@type LazySpec
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          matcher = {
            smartcase = false,
            ignorecase = true,
          },
        },
      },
    },
  },
}
